import 'package:flutter/material.dart';

Future<bool> inputDialog(BuildContext context) async {
  bool temporarySave = false;

  await showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          title: const Text('완성이 얼마 남지 않았습니다!'),
          content: const Text('임시 저장 하시겠습니까?'),
          actions: [
            TextButton(
                onPressed: () {
                  temporarySave = false;
                  Navigator.pop(context);
                },
                child: const Text('아니요')),
            TextButton(
                onPressed: () {
                  temporarySave = true;
                  Navigator.pop(context);
                },
                child: const Text('네')),
          ],
        );
      });

  print(temporarySave);

  return temporarySave;
}
