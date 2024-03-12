import 'package:flutter/material.dart';
import 'package:mandalart/DataModel/MandalartDto.dart';
import 'package:mandalart/component/WidgetsForAppbar.dart';
import 'package:mandalart/component/WidgetsForDialog.dart';
import 'package:mandalart/component/WidgetsForMdShow.dart';
import 'package:mandalart/provider/FirebaseProvider2.dart';
import 'package:mandalart/provider/UserProvider.dart';
import 'package:provider/provider.dart';

class SampleMandalartShowPage2 extends StatefulWidget {
  const SampleMandalartShowPage2({super.key, required this.mdDto});

  final MandalartDto mdDto;

  @override
  State<SampleMandalartShowPage2> createState() =>
      _SampleMandalartShowPage2State();
}

class _SampleMandalartShowPage2State extends State<SampleMandalartShowPage2> {
  late final UserProvider loginVM;
  late final FirebaseProvider2 firebaseVM;
  late final MandalartDto mdDto;
  String type = '어라?';

  @override
  void initState() {
    super.initState();
    loginVM = Provider.of<UserProvider>(context, listen: false);
    firebaseVM = Provider.of<FirebaseProvider2>(context, listen: false);
    mdDto = widget.mdDto;

    switch (mdDto.mdType) {
      case 3:
        type = '삼각형';
      case 6:
        type = '육각형';
      case 8:
        type = '사각형';
    }
  }

  @override
  Widget build(BuildContext context) {
    print('_MandalartShowPage2State.build ${mdDto.mandalart}');
    return Scaffold(
      appBar: RenderAppbar(
        title: '오타니의 $type 만다라트',
      ),
      endDrawer: RenderDrawerWidget(),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [WidgetsForMdShow(mdDto: mdDto)],
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          typeSelectDialog(context);
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
