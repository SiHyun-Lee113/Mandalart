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
                      label: 'level 1',
                      children: List.generate(8, (index) {
                        return renderLevel2InputField(
                          onSaved: (val) {
                            mandalartProvider.addSpecGoalsLv2(val);
                          },
                          label: 'level 2',
                          children: [
                            renderLevel3InputField(
                                onSaved: (val) {
                                  mandalartProvider.addSpecGoalsLv3(0, val);
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
            formKey.currentState?.save();
            mandalartProvider.printMandalart();
          },
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
