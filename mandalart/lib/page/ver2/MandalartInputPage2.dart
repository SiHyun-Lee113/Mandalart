import 'package:flutter/material.dart';
import 'package:mandalart/DataModel/MandalartDto.dart';
import 'package:mandalart/component/WidgetsForAppbar.dart';
import 'package:mandalart/component/WidgetsForDialog.dart';
import 'package:mandalart/component/WidgetsForMandalartInput.dart';
import 'package:mandalart/provider/FirebaseProvider2.dart';
import 'package:mandalart/provider/MandalartProvider2.dart';
import 'package:mandalart/provider/UserProvider.dart';
import 'package:mandalart/util/TextControllerCreator2.dart';
import 'package:provider/provider.dart';

class MandalartInputPage2 extends StatefulWidget {
  const MandalartInputPage2({super.key, required this.viewCount});

  final int viewCount; // Define viewCount as a member variable

  @override
  State<MandalartInputPage2> createState() => _MandalartInputPage2State();
}

class _MandalartInputPage2State extends State<MandalartInputPage2> {
  final formKey = GlobalKey<FormState>();
  late final MandalartProvider2 mandalartProvider;
  late final FirebaseProvider2 firebaseProvider;
  late final ExpansionTileController expansionController;
  late final int viewCount = widget.viewCount;
  late final TextControllerCreator2 _creator;
  late final UserProvider userProvider;
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    mandalartProvider = Provider.of<MandalartProvider2>(context, listen: false);
    firebaseProvider = Provider.of<FirebaseProvider2>(context, listen: false);
    userProvider = Provider.of<UserProvider>(context, listen: false);
    expansionController = ExpansionTileController(); // 컨트롤러 초기화
    _creator = TextControllerCreator2(viewCount, mandalartProvider);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const RenderAppbar(title: '삼각형 만다라트'),
      endDrawer: RenderDrawerWidget(),
      body: _isLoading
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Form(
                  key: formKey,
                  child: Expanded(
                    child: ListView(
                      shrinkWrap: true,
                      padding: const EdgeInsets.all(8),
                      children: [
                        renderLevel1InputField(
                            controller: _creator.forLv1Content,
                            expansionController: expansionController,
                            onSaved: (val) {
                              mandalartProvider.createMandalart(1, val);
                            },
                            validator: (val) {
                              return mandalartProvider.notInputValidation(val);
                            },
                            edgeInsets: EdgeInsets.only(
                                bottom:
                                    MediaQuery.of(context).viewInsets.bottom),
                            label: 'level 1',
                            children: List.generate(viewCount, (index) {
                              final expansionController =
                                  ExpansionTileController();
                              return renderLevel2InputField(
                                controller: _creator.forLv2Content[index],
                                expansionController: expansionController,
                                onSaved: (val) {
                                  mandalartProvider.addSpecGoalsLv2(val);
                                },
                                validator: (val) {
                                  return mandalartProvider
                                      .notInputValidation(val);
                                },
                                edgeInsets: EdgeInsets.only(
                                    bottom: MediaQuery.of(context)
                                        .viewInsets
                                        .bottom),
                                label: 'level 2',
                                children: [
                                  renderLevel3InputField(
                                    onSaved: (val) {
                                      mandalartProvider.addSpecGoalsLv3(
                                          index, val);
                                    },
                                    validator: (val) {
                                      return mandalartProvider
                                          .notInputValidation(val);
                                    },
                                    viewCount: viewCount,
                                    edgeInsets: EdgeInsets.only(
                                        bottom: MediaQuery.of(context)
                                            .viewInsets
                                            .bottom),
                                    controllers: _creator.forLv3Content[index],
                                  ),
                                ],
                              );
                            })),
                        const SizedBox(
                          height: 200,
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          _submitForm();
        },
        tooltip: 'Increment',
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.data_object),
            Text(
              '저장',
              style: TextStyle(fontSize: 12),
            )
          ],
        ),
      ),
    );
  }

  Future<MandalartDto> _initDto() async {
    setState(() {
      _isLoading = true;
    });
    formKey.currentState?.save();

    var dto = mandalartProvider.mandalartDto;
    dto.mdType = viewCount;
    await firebaseProvider.saveDocument(dto);

    setState(() {
      _isLoading = false;
    });

    mandalartProvider.resetMandalartDto();

    return dto;
  }

  Future<void> _submitForm() async {
    if (!userProvider.checkLogin()) {
      userProvider.handleAuth();
      return;
    }

    if (formKey.currentState!.validate()) {
      late MandalartDto dto;
      dto = await _initDto();

      if (!mounted) return;
      Navigator.pushReplacementNamed(context, '/mdShow', arguments: dto);
    } else {
      bool temporarySave = await inputDialog(context);
      if (temporarySave) {
        formKey.currentState?.save();

        late MandalartDto dto;
        dto = await _initDto();

        if (!mounted) return;
        Navigator.pushReplacementNamed(context, '/mdShow', arguments: dto);
      }
    }
  }
}
