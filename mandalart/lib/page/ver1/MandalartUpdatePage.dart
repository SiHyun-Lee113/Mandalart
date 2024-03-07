import 'package:flutter/material.dart';
import 'package:mandalart/DataModel/MandalartDto.dart';
import 'package:mandalart/component/WidgetsForAppbar.dart';
import 'package:mandalart/component/WidgetsForDialog.dart';
import 'package:mandalart/component/WidgetsForMandalartInput.dart';
import 'package:mandalart/provider/FirebaseProvider.dart';
import 'package:mandalart/provider/UserProvider.dart';
import 'package:provider/provider.dart';

import '../../provider/MandalartProvider.dart';
import '../../util/TextControllerCreator.dart';

class MandalartUpdatePage extends StatefulWidget {
  const MandalartUpdatePage({super.key, required this.mdDto});

  final MandalartDto mdDto;

  @override
  State<MandalartUpdatePage> createState() => _MandalartUpdatePageState();
}

class _MandalartUpdatePageState extends State<MandalartUpdatePage> {
  final formKey = GlobalKey<FormState>();
  late final MandalartProvider mandalartProvider;
  late final FirebaseProvider firebaseProvider;
  late final ExpansionTileController expansionController;
  late final TextControllerCreator _creator;
  late final UserProvider userProvider;
  @override
  void initState() {
    super.initState();
    mandalartProvider = MandalartProvider.forUpdate(widget.mdDto.mandalart);
    firebaseProvider = Provider.of<FirebaseProvider>(context, listen: false);
    expansionController = ExpansionTileController(); // 컨트롤러 초기화
    userProvider = Provider.of<UserProvider>(context);
    _creator = TextControllerCreator(widget.mdDto.mdType, mandalartProvider);
  }

  @override
  Widget build(BuildContext context) {
    final loginVM = Provider.of<UserProvider>(context, listen: true);

    print('user : ${loginVM.getUserName()}');

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

            var mandalart = mandalartProvider.mandalart;
            widget.mdDto.mandalart = mandalart;
            firebaseProvider.updateDocument(widget.mdDto);
          } else {
            bool temporarySave = await inputDialog(context);
            if (temporarySave) {
              formKey.currentState?.save();

              var mandalart = mandalartProvider.mandalart;
              var docIndex = -1;
              await firebaseProvider
                  .saveDocument(mandalart)
                  .then((value) => docIndex = value);

              print(docIndex);

              if (!mounted) return;
              Navigator.pushNamed(context, '/mdShow', arguments: docIndex);
            }
          }
        },
        tooltip: 'save',
        child: const Icon(Icons.add),
      ),
    );
  }
}
