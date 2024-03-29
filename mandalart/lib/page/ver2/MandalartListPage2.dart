import 'package:flutter/material.dart';
import 'package:mandalart/component/WidgetsForAppbar.dart';
import 'package:mandalart/component/WidgetsForMain.dart';

class MandalartListPage2 extends StatefulWidget {
  const MandalartListPage2({super.key});

  @override
  State<MandalartListPage2> createState() => _MandalartListPage2State();
}

class _MandalartListPage2State extends State<MandalartListPage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const RenderAppbarMain(
        title: '만다라트 목록',
      ),
      endDrawer: RenderDrawerWidget(),
      body: RenderMandalartList2(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/mdInputPage', arguments: 8);
        },
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.add_card),
            Text(
              '생성',
              style: TextStyle(fontSize: 12),
            )
          ],
        ),
      ),
    );
  }
}
