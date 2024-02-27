import 'package:flutter/material.dart';
import 'package:mandalart/component/WidgetsForAppbar.dart';
import 'package:provider/provider.dart';

import '../provider/LoginProvider.dart';

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
    final loginVM = Provider.of<LoginViewModel>(context);

    return Scaffold(
      appBar: const RenderAppbar(title: '만다라트 유형 선택'),
      endDrawer:
          loginVM.checkLogin() ? RenderSignInDrawer() : RenderSignOutDrawer(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Text('data')],
      ),
    );
  }
}
