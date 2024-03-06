import 'package:flutter/material.dart';
import 'package:mandalart/DataModel/MandalartDto.dart';
import 'package:mandalart/component/WidgetsForAppbar.dart';
import 'package:mandalart/provider/FirebaseProvider.dart';
import 'package:mandalart/provider/UserProvider.dart';
import 'package:provider/provider.dart';

import '../DataModel/Mandalart.dart';

class MandalartShowPage extends StatefulWidget {
  const MandalartShowPage({super.key, required this.docIndex});

  final int docIndex;

  @override
  State<MandalartShowPage> createState() => _MandalartShowPageState();
}

class _MandalartShowPageState extends State<MandalartShowPage> {
  late final UserProvider loginVM;
  late final FirebaseProvider firebaseVM;
  late final Mandalart showMD;
  late final String docId;

  @override
  void initState() {
    super.initState();
    loginVM = Provider.of<UserProvider>(context, listen: false);
    firebaseVM = Provider.of<FirebaseProvider>(context, listen: false);
  }

  Future<void> loadData() async {
    docId = loginVM.getDocId(widget.docIndex);

    await firebaseVM.getDocument(docId).then((value) => showMD = value);
  }

  @override
  Widget build(BuildContext context) {
    String user = loginVM.getUserName();
    firebaseVM.getDocument(loginVM.getDocId(widget.docIndex));
    return Scaffold(
      appBar: RenderAppbar(
        title: user,
      ),
      endDrawer: RenderDrawerWidget(),
      body: Center(
          child: FutureBuilder(
        future: loadData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const CircularProgressIndicator();
          } else if (snapshot.hasError) {
            return Text('Error: ${snapshot.error}');
          } else {
            print(showMD);
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('data'),
                Text(loginVM.getDocId(widget.docIndex)),
                Text('${widget.docIndex}'),
              ],
            );
          }
        },
      )),
      floatingActionButton: Stack(
        children: [
          Align(
            alignment: Alignment(
                Alignment.bottomRight.x - 0.1, Alignment.bottomRight.y - 0.15),
            child: FloatingActionButton(
              heroTag: 'updateBtn',
              onPressed: () {
                var mandalartDto = MandalartDto(docId, 8, showMD);

                Navigator.pushNamed(context, '/mdUpdate',
                    arguments: mandalartDto);
              },
              tooltip: 'Update',
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.mode_edit),
                  Text(
                    '수정',
                    style: TextStyle(fontSize: 12),
                  )
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment(
                Alignment.bottomRight.x - 0.1, Alignment.bottomRight.y),
            child: FloatingActionButton(
              heroTag: 'shareBtn',
              onPressed: () {},
              tooltip: 'Share',
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.share),
                  Text(
                    '공유',
                    style: TextStyle(fontSize: 12),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
