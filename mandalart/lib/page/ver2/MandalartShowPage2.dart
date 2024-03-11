import 'package:flutter/material.dart';
import 'package:mandalart/DataModel/MandalartDto.dart';
import 'package:mandalart/component/WidgetsForAppbar.dart';
import 'package:mandalart/component/WidgetsForMdShow.dart';
import 'package:mandalart/provider/FirebaseProvider2.dart';
import 'package:mandalart/provider/UserProvider.dart';
import 'package:provider/provider.dart';

class MandalartShowPage2 extends StatefulWidget {
  const MandalartShowPage2({super.key, required this.mdDto});

  final MandalartDto mdDto;

  @override
  State<MandalartShowPage2> createState() => _MandalartShowPage2State();
}

class _MandalartShowPage2State extends State<MandalartShowPage2> {
  late final UserProvider loginVM;
  late final FirebaseProvider2 firebaseVM;
  late final MandalartDto mdDto;

  @override
  void initState() {
    super.initState();
    loginVM = Provider.of<UserProvider>(context, listen: false);
    firebaseVM = Provider.of<FirebaseProvider2>(context, listen: false);
    mdDto = widget.mdDto;
  }

  @override
  Widget build(BuildContext context) {
    String user = loginVM.getUserName();
    print('_MandalartShowPage2State.build ${mdDto.mandalart}');
    return Scaffold(
      appBar: RenderAppbar(
        title: user,
      ),
      endDrawer: RenderDrawerWidget(),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [WidgetsForMdShow(mdDto: mdDto)],
      )),
      floatingActionButton: Stack(
        children: [
          Align(
            alignment: Alignment(
                Alignment.bottomRight.x - 0.1, Alignment.bottomRight.y - 0.15),
            child: FloatingActionButton(
              heroTag: 'updateBtn',
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/mdUpdate',
                    arguments: mdDto);
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
