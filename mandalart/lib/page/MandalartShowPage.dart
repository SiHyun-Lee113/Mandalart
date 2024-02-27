import 'package:flutter/material.dart';
import 'package:mandalart/component/RenderAppbarWidget.dart';

class MandalartShowPage extends StatefulWidget {
  const MandalartShowPage({super.key});

  @override
  State<MandalartShowPage> createState() => _MandalartShowPageState();
}

class _MandalartShowPageState extends State<MandalartShowPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: RenderAppbar(
        title: 'User의 만다라트',
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Text('data')],
      ),
    );
  }
}
