import 'package:flutter/material.dart';
import 'package:mandalart/component/WidgetsForAppbar.dart';
import 'package:mandalart/provider/LoginProvider.dart';
import 'package:provider/provider.dart';

class MandalartShowPage extends StatefulWidget {
  const MandalartShowPage({super.key});

  @override
  State<MandalartShowPage> createState() => _MandalartShowPageState();
}

class _MandalartShowPageState extends State<MandalartShowPage> {
  @override
  Widget build(BuildContext context) {
    final loginVM = Provider.of<LoginViewModel>(context);

    return Scaffold(
      appBar: RenderAppbar(
        title: 'User의 만다라트',
      ),
      endDrawer: RenderDrawerWidget(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Text('data')],
      ),
    );
  }
}
