import 'package:flutter/material.dart';
import 'package:mandalart/util/style/MandalartStyle.dart';

void main() {
  runApp(Directionality(textDirection: TextDirection.ltr, child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: const Text('사각형 만다라트'),
            ),
            body: TestApp()));
  }
}

class TestApp extends StatefulWidget {
  const TestApp({super.key});

  @override
  State<TestApp> createState() => _TestAppState();
}

class _TestAppState extends State<TestApp> {
  @override
  Widget build(BuildContext context) {
    return InteractiveViewer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              width: 400,
              height: 400,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(color: Colors.white),
              child: Stack(
                children: [
                  lv1Goal(),
                  lv2_4Goals(),
                  lv2_5Goals(),
                  lv2_7Goals(),
                  lv2_6Goals(),
                  lv2_8Goals(),
                  lv2_2Goals(),
                  lv2_1Goals(),
                  lv2_3Goals(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Positioned lv1Goal() {
    return Positioned(
      left: 136,
      top: 137,
      child: Container(
        width: 127,
        height: 127,
        child: Stack(
          children: [
            Positioned(
              left: 0,
              top: 0,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0xFFFFD9D9),
                child: const Center(child: Text('목표1')),
              ),
            ),
            Positioned(
              left: 43.11,
              top: 0,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0xFFFFEDD3),
                child: const Center(child: Text('목표2')),
              ),
            ),
            Positioned(
              left: 86.22,
              top: 0,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0xFFE1FFD6),
                child: const Center(child: Text('목표3')),
              ),
            ),
            Positioned(
              left: 0,
              top: 43.11,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0xFFFED1FF),
                child: const Center(child: Text('목표4')),
              ),
            ),
            Positioned(
              left: 43.11,
              top: 43.11,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0xFFFFFFFF),
                child: const Center(child: Text('목표')),
              ),
            ),
            Positioned(
              left: 86.22,
              top: 43.11,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0xFFCEF3F8),
                child: const Center(child: Text('목표5')),
              ),
            ),
            Positioned(
              left: 0,
              top: 86.22,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0xFFCDB6FF),
                child: const Center(child: Text('목표6')),
              ),
            ),
            Positioned(
              left: 43.11,
              top: 86.22,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0xFFACBEFF),
                child: const Center(child: Text('목표7')),
              ),
            ),
            Positioned(
              left: 86.22,
              top: 86.22,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0xFFA7C9FE),
                child: const Center(child: Text('목표8')),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Positioned lv2_1Goals() {
    return Positioned(
      left: 5,
      top: 6,
      child: Container(
        width: 127,
        height: 127,
        child: Stack(
          children: [
            Positioned(
              left: 0,
              top: 0,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0x33FFD9D9),
                child: Text(''),
              ),
            ),
            Positioned(
              left: 43.11,
              top: 0,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0x33FFD9D9),
              ),
            ),
            Positioned(
              left: 86.22,
              top: 0,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0x33FFD9D9),
              ),
            ),
            Positioned(
              left: 0,
              top: 43.11,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0x33FFD9D9),
              ),
            ),
            Positioned(
              left: 43.11,
              top: 43.11,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0xFFFFD9D9),
                child: const Center(
                  child: Text('목표1'),
                ),
              ),
            ),
            Positioned(
              left: 86.22,
              top: 43.11,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0x33FFD9D9),
              ),
            ),
            Positioned(
              left: 0,
              top: 86.22,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0x33FFD9D9),
              ),
            ),
            Positioned(
              left: 43.11,
              top: 86.22,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0x33FFD9D9),
              ),
            ),
            Positioned(
              left: 86.22,
              top: 86.22,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0x33FFD9D9),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Positioned lv2_2Goals() {
    return Positioned(
      left: 136,
      top: 6,
      child: Container(
        width: 127,
        height: 127,
        child: Stack(
          children: [
            Positioned(
              left: 0,
              top: 0,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0x33FFEED3),
                child: Text(''),
              ),
            ),
            Positioned(
              left: 43.11,
              top: 0,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0x33FFEED3),
              ),
            ),
            Positioned(
              left: 86.22,
              top: 0,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0x33FFEED3),
              ),
            ),
            Positioned(
              left: 0,
              top: 43.11,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0x33FFEED3),
              ),
            ),
            Positioned(
              left: 43.11,
              top: 43.11,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0xFFFFEED3),
                child: const Center(
                  child: Text('목표2'),
                ),
              ),
            ),
            Positioned(
              left: 86.22,
              top: 43.11,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0x33FFEED3),
              ),
            ),
            Positioned(
              left: 0,
              top: 86.22,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0x33FFEED3),
              ),
            ),
            Positioned(
              left: 43.11,
              top: 86.22,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0x33FFEED3),
              ),
            ),
            Positioned(
              left: 86.22,
              top: 86.22,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0x33FFEED3),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Positioned lv2_3Goals() {
    return Positioned(
      left: 267,
      top: 6,
      child: Container(
        width: 127,
        height: 127,
        child: Stack(
          children: [
            Positioned(
              left: 0,
              top: 0,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0x33E1FFD7),
                child: Text(''),
              ),
            ),
            Positioned(
              left: 43.11,
              top: 0,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0x33E1FFD7),
              ),
            ),
            Positioned(
              left: 86.22,
              top: 0,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0x33E1FFD7),
              ),
            ),
            Positioned(
              left: 0,
              top: 43.11,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0x33E1FFD7),
              ),
            ),
            Positioned(
              left: 43.11,
              top: 43.11,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0xFFE1FFD7),
                child: const Center(
                  child: Text('목표3'),
                ),
              ),
            ),
            Positioned(
              left: 86.22,
              top: 43.11,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0x33E1FFD7),
              ),
            ),
            Positioned(
              left: 0,
              top: 86.22,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0x33E1FFD7),
              ),
            ),
            Positioned(
              left: 43.11,
              top: 86.22,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0x33E1FFD7),
              ),
            ),
            Positioned(
              left: 86.22,
              top: 86.22,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0x33E1FFD7),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Positioned lv2_4Goals() {
    return Positioned(
      left: 5,
      top: 137,
      child: Container(
        width: 127,
        height: 127,
        child: Stack(
          children: [
            Positioned(
              left: 0,
              top: 0,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0x33FED1FF),
              ),
            ),
            Positioned(
              left: 43.11,
              top: 0,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0x33FED1FF),
              ),
            ),
            Positioned(
              left: 86.22,
              top: 0,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0x33FED1FF),
              ),
            ),
            Positioned(
              left: 0,
              top: 43.11,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0x33FED1FF),
              ),
            ),
            Positioned(
              left: 43.11,
              top: 43.11,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0xFFFED1FF),
                child: const Center(
                  child: Text('목표4'),
                ),
              ),
            ),
            Positioned(
              left: 86.22,
              top: 43.11,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0x33FED1FF),
              ),
            ),
            Positioned(
              left: 0,
              top: 86.22,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0x33FED1FF),
              ),
            ),
            Positioned(
              left: 43.11,
              top: 86.22,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0x33FED1FF),
              ),
            ),
            Positioned(
              left: 86.22,
              top: 86.22,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0x33FED1FF),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Positioned lv2_5Goals() {
    return Positioned(
      left: 267,
      top: 137,
      child: Container(
        width: 127,
        height: 127,
        child: Stack(
          children: [
            Positioned(
              left: 0,
              top: 0,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0x33CEF3F8),
                child: Text(''),
              ),
            ),
            Positioned(
              left: 43.11,
              top: 0,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0x33CEF3F8),
              ),
            ),
            Positioned(
              left: 86.22,
              top: 0,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0x33CEF3F8),
              ),
            ),
            Positioned(
              left: 0,
              top: 43.11,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0x33CEF3F8),
              ),
            ),
            Positioned(
              left: 43.11,
              top: 43.11,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0xFFCEF3F8),
                child: const Center(child: Text('목표5')),
              ),
            ),
            Positioned(
              left: 86.22,
              top: 43.11,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0x33CEF3F8),
              ),
            ),
            Positioned(
              left: 0,
              top: 86.22,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0x33CEF3F8),
              ),
            ),
            Positioned(
              left: 43.11,
              top: 86.22,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0x33CEF3F8),
              ),
            ),
            Positioned(
              left: 86.22,
              top: 86.22,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0x33CEF3F8),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Positioned lv2_6Goals() {
    return Positioned(
      left: 5,
      top: 268,
      child: Container(
        width: 127,
        height: 127,
        child: Stack(
          children: [
            Positioned(
              left: 0,
              top: 0,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0x33CDB6FF),
                child: Text(''),
              ),
            ),
            Positioned(
              left: 43.11,
              top: 0,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0x33CDB6FF),
              ),
            ),
            Positioned(
              left: 86.22,
              top: 0,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0x33CDB6FF),
              ),
            ),
            Positioned(
              left: 0,
              top: 43.11,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0x33CDB6FF),
              ),
            ),
            Positioned(
              left: 43.11,
              top: 43.11,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0xFFCDB6FF),
                child: const Center(
                  child: Text('목표6'),
                ),
              ),
            ),
            Positioned(
              left: 86.22,
              top: 43.11,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0x33CDB6FF),
              ),
            ),
            Positioned(
              left: 0,
              top: 86.22,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0x33CDB6FF),
              ),
            ),
            Positioned(
              left: 43.11,
              top: 86.22,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0x33CDB6FF),
              ),
            ),
            Positioned(
              left: 86.22,
              top: 86.22,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0x33CDB6FF),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Positioned lv2_7Goals() {
    return Positioned(
      left: 136,
      top: 268,
      child: Container(
        width: 127,
        height: 127,
        child: Stack(
          children: [
            Positioned(
              left: 0,
              top: 0,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0x33ACBFFF),
                child: Text(''),
              ),
            ),
            Positioned(
              left: 43.11,
              top: 0,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0x33ACBFFF),
              ),
            ),
            Positioned(
              left: 86.22,
              top: 0,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0x33ACBFFF),
              ),
            ),
            Positioned(
              left: 0,
              top: 43.11,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0x33ACBFFF),
              ),
            ),
            Positioned(
              left: 43.11,
              top: 43.11,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0xFFACBFFF),
                child: const Center(
                  child: Text('목표7'),
                ),
              ),
            ),
            Positioned(
              left: 86.22,
              top: 43.11,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0x33ACBFFF),
              ),
            ),
            Positioned(
              left: 0,
              top: 86.22,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0x33ACBFFF),
              ),
            ),
            Positioned(
              left: 43.11,
              top: 86.22,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0x33ACBFFF),
              ),
            ),
            Positioned(
              left: 86.22,
              top: 86.22,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0x33ACBFFF),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Positioned lv2_8Goals() {
    return Positioned(
      left: 267,
      top: 268,
      child: Container(
        width: 127,
        height: 127,
        child: Stack(
          children: [
            Positioned(
              left: 0,
              top: 0,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0x33A7CAFE),
                child: Text(''),
              ),
            ),
            Positioned(
              left: 43.11,
              top: 0,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0x33A7CAFE),
              ),
            ),
            Positioned(
              left: 86.22,
              top: 0,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0x33A7CAFE),
              ),
            ),
            Positioned(
              left: 0,
              top: 43.11,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0x33A7CAFE),
              ),
            ),
            Positioned(
              left: 43.11,
              top: 43.11,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0xFFA7CAFE),
                child: const Center(
                  child: Text('목표8'),
                ),
              ),
            ),
            Positioned(
              left: 86.22,
              top: 43.11,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0x33A7CAFE),
              ),
            ),
            Positioned(
              left: 0,
              top: 86.22,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0x33A7CAFE),
              ),
            ),
            Positioned(
              left: 43.11,
              top: 86.22,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0x33A7CAFE),
              ),
            ),
            Positioned(
              left: 86.22,
              top: 86.22,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0x33A7CAFE),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
