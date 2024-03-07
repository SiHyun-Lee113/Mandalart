import 'package:flutter/material.dart';
import 'package:mandalart/DataModel/MandalartDto.dart';
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
              title: Text(docIdList[index]),
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
      if (mdDtoList.isEmpty) return RenderMainListForNoMD();

      return RenderMainListForMD(list: mdDtoList);
    } else {
      return RenderMainListForNoMD();
    }
  }
}

class RenderMainListForMD extends StatelessWidget {
  const RenderMainListForMD({super.key, required this.list});

  final List<MandalartDto> list;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: list.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(list[index].docId),
          subtitle: Text(list[index].mdType.toString()),
          onTap: () {
            Navigator.pushNamed(context, '/mdShow', arguments: list[index]);
          },
        );
      },
    );
  }
}

class RenderMainListForNoMD extends StatelessWidget {
  const RenderMainListForNoMD({super.key});

  @override
  Widget build(BuildContext context) {
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
