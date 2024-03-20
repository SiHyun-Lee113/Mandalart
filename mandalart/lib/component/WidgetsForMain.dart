import 'package:flutter/material.dart';
import 'package:mandalart/DataModel/MandalartDto.dart';
import 'package:mandalart/component/WidgetsForDialog.dart';
import 'package:mandalart/provider/UserProvider.dart';
import 'package:provider/provider.dart';

import '../provider/FirebaseProvider2.dart';

class RenderMandalartList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    UserProvider userProvider =
        Provider.of<UserProvider>(context, listen: true);

    List<String> docIdList = userProvider.getDocIdList();

    if (userProvider.checkLogin()) {
      return ListView.builder(
          itemCount: docIdList.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(
                docIdList[index],
                textAlign: TextAlign.center,
              ),
              onTap: () {
                Navigator.pushNamed(context, '/mdShow', arguments: index);
              },
            );
          });
    } else {
      return ListView(
        children: [
          ListTile(
            title: Text('오타니의 만다라트'),
          ),
          ListTile(
            title: Text('새로운 만다라트를 만들어 보세요'),
          )
        ],
      );
    }
  }
}

class RenderMandalartList2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    UserProvider userProvider =
        Provider.of<UserProvider>(context, listen: true);
    FirebaseProvider2 fbProvider =
        Provider.of<FirebaseProvider2>(context, listen: true);

    if (userProvider.checkLogin()) {
      fbProvider.getMdDtoList();
      List<MandalartDto> mdDtoList = fbProvider.mdDtoList;
      if (mdDtoList.isEmpty) return const RenderMainListForNoMD();

      return RenderMainListForMD(list: mdDtoList);
    } else {
      return const RenderMainListForNoMD();
    }
  }
}

class RenderMainListForMD extends StatelessWidget {
  const RenderMainListForMD({super.key, required this.list});

  final List<MandalartDto> list;

  @override
  Widget build(BuildContext context) {
    final FirebaseProvider2 firebaseProvider2 =
        Provider.of<FirebaseProvider2>(context);

    return ListView.builder(
      itemCount: list.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(
            list[index].mandalart.content,
            textAlign: TextAlign.center,
          ),
          onTap: () {
            Navigator.pushNamed(context, '/mdShow', arguments: list[index]);
          },
          onLongPress: () async {
            bool deleteResult = await deleteDialog(context);

            if (deleteResult) {
              firebaseProvider2.deleteDocument(list[index]);
            }
          },
        );
      },
    );
  }
}

class RenderMainListForNoMD extends StatefulWidget {
  const RenderMainListForNoMD({super.key});

  @override
  State<RenderMainListForNoMD> createState() => _RenderMainListForNoMDState();
}

class _RenderMainListForNoMDState extends State<RenderMainListForNoMD> {
  late final FirebaseProvider2 firebaseProvider2;
  List<MandalartDto> sampleList = [];

  @override
  void initState() {
    firebaseProvider2 = Provider.of<FirebaseProvider2>(context, listen: false);
    _loadData();
    super.initState();
  }

  Future<void> _loadData() async {
    try {
      List<MandalartDto> data = await firebaseProvider2.getSampleList();
      setState(() {
        sampleList = data;
      });
    } catch (error) {
      print('Error: $error');
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: sampleList.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(
            sampleList[index].mandalart.content,
            textAlign: TextAlign.center,
          ),
          onTap: () {
            Navigator.pushNamed(context, '/mdSampleShow',
                arguments: sampleList[index]);
          },
        );
      },
    );
  }
}
