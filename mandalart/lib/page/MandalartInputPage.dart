import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/material.dart';
import 'package:mandalart/component/MandalartInputWidget.dart';
import 'package:mandalart/component/RenderAppbarWidget.dart';
import 'package:mandalart/provider/MandalartProvider.dart';
import 'package:provider/provider.dart';

class MandalartInputPage extends StatefulWidget {
  const MandalartInputPage({super.key, required this.viewCount});

  final int viewCount; // Define viewCount as a member variable

  @override
  State<MandalartInputPage> createState() => _MandalartInputPageState();
}

class _MandalartInputPageState extends State<MandalartInputPage> {
  final formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldMessengerState>();
  late final MandalartProvider mandalartProvider;
  late final ExpansionTileController expansionController;
  late final int viewCount = widget.viewCount;

  @override
  void initState() {
    super.initState();
    mandalartProvider = Provider.of<MandalartProvider>(context, listen: false);
    expansionController = ExpansionTileController(); // 컨트롤러 초기화
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: const RenderAppbar(title: '삼각형 만다라트'),
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
          if (formKey.currentState!.validate()) {
            formKey.currentState?.save();
            mandalartProvider.printMandalart();
          } else {
            final snackBar = SnackBar(
              elevation: 0,
              behavior: SnackBarBehavior.floating,
              backgroundColor: Colors.transparent,
              content: AwesomeSnackbarContent(
                title: 'On Snap!',
                message:
                    'This is an example error message that will be shown in the body of snackbar!',
                contentType: ContentType.failure,
              ),
            );

            scaffoldKey.currentState?.showSnackBar(snackBar);
          }
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
