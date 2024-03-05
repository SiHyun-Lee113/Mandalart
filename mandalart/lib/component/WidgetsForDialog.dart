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

Future<void> typeSelectDialog(BuildContext context) async {
  await showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          title: const FittedBox(
            fit: BoxFit.fitWidth,
            child: Text('어떤 종류의 만다라트를 만들어 볼까요'),
          ),
          content: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/mdInputPage',
                      arguments: 8);
                },
                child: const Text('사각형'),
              ),
              Spacer(),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/mdInputPage',
                      arguments: 6);
                },
                child: const Text('육각형'),
              ),
              Spacer(),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/mdInputPage',
                      arguments: 3);
                },
                child: const Text('삼각형'),
              ),
            ],
          ),
        );
      });
}
