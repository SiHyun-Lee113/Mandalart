import 'package:flutter/material.dart';
import 'package:mandalart/component/RenderAppbarWidget.dart';

class MandalartTypeSelectionPage extends StatefulWidget {
  const MandalartTypeSelectionPage({super.key});

  @override
  State<MandalartTypeSelectionPage> createState() =>
      _MandalartTypeSelectionPageState();
}

class _MandalartTypeSelectionPageState
    extends State<MandalartTypeSelectionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: RenderAppbar(
        title: '만다라트 유형 선택',
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Text('data')],
      ),
    );
  }
}
