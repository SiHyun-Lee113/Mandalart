import 'package:flutter/material.dart';
import 'package:mandalart/component/WidgetsForAppbar.dart';
import 'package:mandalart/component/WidgetsForDialog.dart';
import 'package:mandalart/component/WidgetsForMain.dart';

class MandalartListPage extends StatefulWidget {
  const MandalartListPage({super.key});

  @override
  State<MandalartListPage> createState() => _MandalartListPageState();
}

class _MandalartListPageState extends State<MandalartListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const RenderAppbar(
        title: '만다라트 ListPage',
      ),
      endDrawer: RenderDrawerWidget(),
      body: RenderMandalartList(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          typeSelectDialog(context);
        },
        child: const Icon(Icons.add_card),
      ),
    );
  }
}
