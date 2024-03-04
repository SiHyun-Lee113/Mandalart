import 'package:flutter/material.dart';
import 'package:mandalart/component/WidgetsForAppbar.dart';
import 'package:mandalart/component/WidgetsForDialog.dart';
import 'package:mandalart/component/WidgetsForMandalartInput.dart';
import 'package:mandalart/provider/FirebaseProvider.dart';
import 'package:mandalart/provider/MandalartProvider.dart';
import 'package:mandalart/provider/UserProvider.dart';
import 'package:provider/provider.dart';

class MandalartInputPage extends StatefulWidget {
  const MandalartInputPage({super.key, required this.viewCount});

  final int viewCount; // Define viewCount as a member variable

  @override
  State<MandalartInputPage> createState() => _MandalartInputPageState();
}

class _MandalartInputPageState extends State<MandalartInputPage> {
  final formKey = GlobalKey<FormState>();
  late final MandalartProvider mandalartProvider;
  late final FirebaseProvider firebaseProvider;
  late final ExpansionTileController expansionController;
  late final int viewCount = widget.viewCount;

  @override
  void initState() {
    super.initState();
    mandalartProvider = Provider.of<MandalartProvider>(context, listen: false);
    firebaseProvider = Provider.of<FirebaseProvider>(context, listen: false);
    expansionController = ExpansionTileController(); // 컨트롤러 초기화
  }

  @override
  Widget build(BuildContext context) {
    final loginVM = Provider.of<UserProvider>(context);

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
                      children: List.generate(viewCount, (index) {
                        final expansionController = ExpansionTileController();
                        return renderLevel2InputField(
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
                              viewCount: viewCount,
                              edgeInsets: EdgeInsets.only(
                                  bottom:
                                      MediaQuery.of(context).viewInsets.bottom),
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
          loginVM.handleAuth();

          if (formKey.currentState!.validate()) {
            formKey.currentState?.save();

            var mandalart = mandalartProvider.mandalart;
            firebaseProvider.saveDocument(mandalart);
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
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
