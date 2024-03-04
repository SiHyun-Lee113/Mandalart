import 'package:flutter/material.dart';
import 'package:mandalart/component/WidgetsForAppbar.dart';
import 'package:mandalart/provider/UserProvider.dart';
import 'package:provider/provider.dart';

class MandalartShowPage extends StatefulWidget {
  const MandalartShowPage({super.key, required this.docIndex});

  final int docIndex;

  @override
  State<MandalartShowPage> createState() => _MandalartShowPageState();
}

class _MandalartShowPageState extends State<MandalartShowPage> {
  @override
  Widget build(BuildContext context) {
    final loginVM = Provider.of<UserProvider>(context);
    String user = loginVM.getUserName();
    return Scaffold(
      appBar: RenderAppbar(
        title: user,
      ),
      endDrawer: RenderDrawerWidget(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('data'),
            Text(loginVM.getDocId(widget.docIndex)),
            Text('${widget.docIndex}'),
          ],
        ),
      ),
    );
  }
}
