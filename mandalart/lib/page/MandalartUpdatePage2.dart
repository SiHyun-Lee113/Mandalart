import 'package:flutter/material.dart';
import 'package:mandalart/DataModel/MandalartDto.dart';
import 'package:mandalart/component/WidgetsForAppbar.dart';
import 'package:mandalart/component/WidgetsForDialog.dart';
import 'package:mandalart/component/WidgetsForMandalartInput.dart';
import 'package:mandalart/provider/MandalartProvider2.dart';
import 'package:mandalart/provider/UserProvider.dart';
import 'package:mandalart/util/TextControllerCreator2.dart';
import 'package:provider/provider.dart';

import '../provider/FirebaseProvider2.dart';

class MandalartUpdatePage2 extends StatefulWidget {
  const MandalartUpdatePage2({super.key, required this.mdDto});

  final MandalartDto mdDto;

  @override
  State<MandalartUpdatePage2> createState() => _MandalartUpdatePage2State();
}

class _MandalartUpdatePage2State extends State<MandalartUpdatePage2> {
  final formKey = GlobalKey<FormState>();
  late final MandalartProvider2 mandalartProvider;
  late final FirebaseProvider2 firebaseProvider;
  late final UserProvider userProvider;
  late final ExpansionTileController expansionController;
  late final TextControllerCreator2 _creator;

  @override
  void initState() {
    super.initState();
    mandalartProvider = MandalartProvider2.forUpdate(widget.mdDto);
    firebaseProvider = Provider.of<FirebaseProvider2>(context, listen: false);
    userProvider = Provider.of<UserProvider>(context, listen: false);
    expansionController = ExpansionTileController(); // 컨트롤러 초기화
    _creator = TextControllerCreator2(widget.mdDto.mdType, mandalartProvider);
  }

  @override
  Widget build(BuildContext context) {
    print('user : ${userProvider.getUserName()}');

    return Scaffold(
      appBar: const RenderAppbar(title: '삼각형 만다라트'),
      endDrawer: RenderDrawerWidget(),
      body: Column(
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
                          bottom: MediaQuery.of(context).viewInsets.bottom),
                      label: 'level 1',
                      children: List.generate(widget.mdDto.mdType, (index) {
                        final expansionController = ExpansionTileController();
                        return renderLevel2InputField(
                          controller: _creator.forLv2Content[index],
                          expansionController: expansionController,
                          onSaved: (val) {
                            mandalartProvider.addSpecGoalsLv2(val);
                          },
                          validator: (val) {
                            return mandalartProvider.notInputValidation(val);
                          },
                          edgeInsets: EdgeInsets.only(
                              bottom: MediaQuery.of(context).viewInsets.bottom),
                          label: 'level 2',
                          children: [
                            renderLevel3InputField(
                              onSaved: (val) {
                                mandalartProvider.addSpecGoalsLv3(0, val);
                              },
                              validator: (val) {
                                return mandalartProvider
                                    .notInputValidation(val);
                              },
                              viewCount: widget.mdDto.mdType,
                              edgeInsets: EdgeInsets.only(
                                  bottom:
                                      MediaQuery.of(context).viewInsets.bottom),
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
          if (!userProvider.checkLogin()) userProvider.handleAuth();

          if (formKey.currentState!.validate()) {
            formKey.currentState?.save();

            _submitForm();
          } else {
            bool temporarySave = await inputDialog(context);
            if (temporarySave) {
              formKey.currentState?.save();

              _submitForm();
            }
          }
        },
        tooltip: 'save',
        child: const Icon(Icons.add),
      ),
    );
  }

  void _submitForm() {
    var mandalart = mandalartProvider.mandalart;
    widget.mdDto.mandalart = mandalart;
    firebaseProvider.updateDocument(widget.mdDto);

    if (!mounted) return;
    Navigator.pushReplacementNamed(context, '/mdShow', arguments: widget.mdDto);
  }
}
