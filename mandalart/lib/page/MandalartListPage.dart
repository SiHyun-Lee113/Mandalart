import 'package:flutter/material.dart';
import 'package:mandalart/component/WidgetsForAppbar.dart';
import 'package:mandalart/provider/LoginProvider.dart';
import 'package:provider/provider.dart';

class MandalartListPage extends StatefulWidget {
  const MandalartListPage({super.key});

  @override
  State<MandalartListPage> createState() => _MandalartListPageState();
}

class _MandalartListPageState extends State<MandalartListPage> {
  @override
  Widget build(BuildContext context) {
    final loginVM = Provider.of<LoginViewModel>(context);
    return MaterialApp(
      home: Scaffold(
          appBar: const RenderAppbar(
            title: '만다라트 ListPage',
          ),
          endDrawer: loginVM.checkLogin()
              ? RenderSignInDrawer()
              : RenderSignOutDrawer(),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/mdTypeSelect');
                    },
                    child: const Text('Mandalart Type Selection Page')),
                ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/mdShow');
                    },
                    child: const Text('Selected Mandalart Show Page')),
                ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/mdInputPage',
                          arguments: 3);
                    },
                    child: const Text('Mandalart Input page')),
              ],
            ),
          )),
    );
  }
}
