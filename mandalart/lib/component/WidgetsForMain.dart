import 'package:flutter/material.dart';
import 'package:mandalart/provider/UserProvider.dart';
import 'package:provider/provider.dart';

class RenderMandalartList extends StatelessWidget {
  const RenderMandalartList({super.key});

  @override
  Widget build(BuildContext context) {
    UserProvider userProvider =
        Provider.of<UserProvider>(context, listen: false);
    List<String> docIdList = userProvider.getDocIdList();

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
  }
}
