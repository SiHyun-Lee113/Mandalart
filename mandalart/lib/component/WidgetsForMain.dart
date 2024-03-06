import 'package:flutter/material.dart';
import 'package:mandalart/provider/UserProvider.dart';
import 'package:provider/provider.dart';

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
