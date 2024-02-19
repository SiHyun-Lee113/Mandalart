import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mandalart/DataModel/Mandalart.dart';
import 'package:mandalart/component/MandalartConfigurationWidget.dart';
import 'package:mandalart/provider/MandalartProvider.dart';
import 'package:mandalart/service/MandalartService.dart';
import 'package:mandalart/util/style/MandalartStyle.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<MandalartProvider>.value(value: MandalartProvider()),
      ],
      child: MandalartSquare(),
    )
  );
}

class MandalartSquare extends StatefulWidget {
  const MandalartSquare({super.key});

  @override
  State<MandalartSquare> createState() => _MandalartSquareState();
}

class _MandalartSquareState extends State<MandalartSquare> {
  final formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldMessengerState>();
  late final MandalartProvider mandalartProvider;

  @override
  void initState() {
    super.initState();
    mandalartProvider = Provider.of<MandalartProvider>(context, listen: false);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        key: scaffoldKey,
        appBar: AppBar(
          title: const Text('사각형 만다라트'),
        ),
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
                      onSaved: (val) {
                        mandalartProvider.createMandalart(1, val);
                      },
                      validator: (val) {
                        return mandalartProvider.notInputValidation(val);
                      },
                      label: 'level 1',
                      children: List.generate(8, (index) {
                        return renderLevel2InputField(
                          onSaved: (val) {
                            mandalartProvider.addSpecGoalsLv2(val);
                          },
                          validator: (val) {
                            return mandalartProvider.notInputValidation(val);
                          },
                          label: 'level 2',
                          children: [
                            renderLevel3InputField(
                                onSaved: (val) {
                                  mandalartProvider.addSpecGoalsLv3(0, val);
                                },
                                validator: (val) {
                                  return mandalartProvider.notInputValidation(val);
                                },
                                viewCount: 8
                            ),
                          ],
                        );
                      })
                    ),
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
      ),
    );
  }
}
