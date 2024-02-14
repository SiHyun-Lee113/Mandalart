import 'package:flutter/cupertino.dart';
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
  double _scale = 1.0;
  double _previousScale = 1.0;
  double _fontSize = 5;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onScaleUpdate: (ScaleUpdateDetails details) {
          setState(() {
            _scale = _previousScale * details.scale;
            _fontSize = 10 / _scale;
            print(_fontSize);
        });
        },
        onScaleEnd: (ScaleEndDetails details) {
          setState(() {
            _previousScale = _scale.clamp(1.0, 3.0); // Limit the scale factor
          });
        },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: Transform.scale(
                scale: _scale,
                child: Column(
                  children: [
                    Container(
                        width: 400,
                        height: 400,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(color: Colors.white),
                        child: Stack(
                          children: [
                            Positioned(
                              left: 145,
                              top: 145,
                              child: Container(
                                  width: 35,
                                  height: 35,
                                  decoration: squareStyle(),
                                  child: TextField(
                                    style: TextStyle(fontSize : _fontSize),
                                    decoration: InputDecoration(labelText: '1-2-1'),
                                    onChanged: (text) {
                                      setState(() {
                                        // 입력된 텍스트의 길이에 따라 글꼴 크기를 조정합니다.
                                        _fontSize = text.isEmpty ? 20.0 : 20.0 - (text.length * 0.5);
                                      });
                                    },
                                  )),
                            ),
                            Positioned(
                              left: 182,
                              top: 145,
                              child: Container(
                                  width: 35, height: 35, decoration: squareStyle()),
                            ),
                            Positioned(
                              left: 219,
                              top: 145,
                              child: Container(
                                  width: 35, height: 35, decoration: squareStyle()),
                            ),
                            Positioned(
                              left: 145,
                              top: 182,
                              child: Container(
                                  width: 35, height: 35, decoration: squareStyle()),
                            ),
                            Positioned(
                              left: 182,
                              top: 182,
                              child: Container(
                                  width: 35, height: 35, decoration: squareStyle()),
                            ),
                            Positioned(
                              left: 219,
                              top: 182,
                              child: Container(
                                  width: 35, height: 35, decoration: squareStyle()),
                            ),
                            Positioned(
                              left: 145,
                              top: 219,
                              child: Container(
                                  width: 35, height: 35, decoration: squareStyle()),
                            ),
                            Positioned(
                              left: 182,
                              top: 219,
                              child: Container(
                                  width: 35, height: 35, decoration: squareStyle()),
                            ),
                            Positioned(
                              left: 219,
                              top: 219,
                              child: Container(
                                  width: 35, height: 35, decoration: squareStyle()),
                            ),
                            Positioned(
                              left: 31,
                              top: 145,
                              child: Container(
                                  width: 35, height: 35, decoration: squareStyle()),
                            ),
                            Positioned(
                              left: 68,
                              top: 145,
                              child: Container(
                                  width: 35, height: 35, decoration: squareStyle()),
                            ),
                            Positioned(
                              left: 105,
                              top: 145,
                              child: Container(
                                  width: 35, height: 35, decoration: squareStyle()),
                            ),
                            Positioned(
                              left: 31,
                              top: 182,
                              child: Container(
                                  width: 35, height: 35, decoration: squareStyle()),
                            ),
                            Positioned(
                              left: 68,
                              top: 182,
                              child: Container(
                                  width: 35, height: 35, decoration: squareStyle()),
                            ),
                            Positioned(
                              left: 105,
                              top: 182,
                              child: Container(
                                  width: 35, height: 35, decoration: squareStyle()),
                            ),
                            Positioned(
                              left: 31,
                              top: 219,
                              child: Container(
                                  width: 35, height: 35, decoration: squareStyle()),
                            ),
                            Positioned(
                              left: 68,
                              top: 219,
                              child: Container(
                                  width: 35, height: 35, decoration: squareStyle()),
                            ),
                            Positioned(
                              left: 105,
                              top: 219,
                              child: Container(
                                  width: 35, height: 35, decoration: squareStyle()),
                            ),
                            Positioned(
                              left: 259,
                              top: 145,
                              child: Container(
                                  width: 35, height: 35, decoration: squareStyle()),
                            ),
                            Positioned(
                              left: 296,
                              top: 145,
                              child: Container(
                                  width: 35, height: 35, decoration: squareStyle()),
                            ),
                            Positioned(
                              left: 333,
                              top: 145,
                              child: Container(
                                  width: 35, height: 35, decoration: squareStyle()),
                            ),
                            Positioned(
                              left: 259,
                              top: 182,
                              child: Container(
                                  width: 35, height: 35, decoration: squareStyle()),
                            ),
                            Positioned(
                              left: 296,
                              top: 182,
                              child: Container(
                                  width: 35, height: 35, decoration: squareStyle()),
                            ),
                            Positioned(
                              left: 333,
                              top: 182,
                              child: Container(
                                  width: 35, height: 35, decoration: squareStyle()),
                            ),
                            Positioned(
                              left: 259,
                              top: 219,
                              child: Container(
                                  width: 35, height: 35, decoration: squareStyle()),
                            ),
                            Positioned(
                              left: 296,
                              top: 219,
                              child: Container(
                                  width: 35, height: 35, decoration: squareStyle()),
                            ),
                            Positioned(
                              left: 333,
                              top: 219,
                              child: Container(
                                  width: 35, height: 35, decoration: squareStyle()),
                            ),
                            Positioned(
                              left: 259,
                              top: 31,
                              child: Container(
                                  width: 35, height: 35, decoration: squareStyle()),
                            ),
                            Positioned(
                              left: 296,
                              top: 31,
                              child: Container(
                                  width: 35, height: 35, decoration: squareStyle()),
                            ),
                            Positioned(
                              left: 333,
                              top: 31,
                              child: Container(
                                  width: 35, height: 35, decoration: squareStyle()),
                            ),
                            Positioned(
                              left: 259,
                              top: 68,
                              child: Container(
                                  width: 35, height: 35, decoration: squareStyle()),
                            ),
                            Positioned(
                              left: 296,
                              top: 68,
                              child: Container(
                                  width: 35, height: 35, decoration: squareStyle()),
                            ),
                            Positioned(
                              left: 333,
                              top: 68,
                              child: Container(
                                  width: 35, height: 35, decoration: squareStyle()),
                            ),
                            Positioned(
                              left: 259,
                              top: 105,
                              child: Container(
                                  width: 35, height: 35, decoration: squareStyle()),
                            ),
                            Positioned(
                              left: 296,
                              top: 105,
                              child: Container(
                                  width: 35, height: 35, decoration: squareStyle()),
                            ),
                            Positioned(
                              left: 333,
                              top: 105,
                              child: Container(
                                  width: 35, height: 35, decoration: squareStyle()),
                            ),
                            Positioned(
                              left: 145,
                              top: 31,
                              child: Container(
                                  width: 35, height: 35, decoration: squareStyle()),
                            ),
                            Positioned(
                              left: 182,
                              top: 31,
                              child: Container(
                                  width: 35, height: 35, decoration: squareStyle()),
                            ),
                            Positioned(
                              left: 219,
                              top: 31,
                              child: Container(
                                  width: 35, height: 35, decoration: squareStyle()),
                            ),
                            Positioned(
                              left: 145,
                              top: 68,
                              child: Container(
                                  width: 35, height: 35, decoration: squareStyle()),
                            ),
                            Positioned(
                              left: 182,
                              top: 68,
                              child: Container(
                                  width: 35, height: 35, decoration: squareStyle()),
                            ),
                            Positioned(
                              left: 219,
                              top: 68,
                              child: Container(
                                  width: 35, height: 35, decoration: squareStyle()),
                            ),
                            Positioned(
                              left: 145,
                              top: 105,
                              child: Container(
                                  width: 35, height: 35, decoration: squareStyle()),
                            ),
                            Positioned(
                              left: 182,
                              top: 105,
                              child: Container(
                                  width: 35, height: 35, decoration: squareStyle()),
                            ),
                            Positioned(
                              left: 219,
                              top: 105,
                              child: Container(
                                  width: 35, height: 35, decoration: squareStyle()),
                            ),
                            Positioned(
                              left: 31,
                              top: 31,
                              child: Container(
                                  width: 35, height: 35, decoration: squareStyle()),
                            ),
                            Positioned(
                              left: 68,
                              top: 31,
                              child: Container(
                                  width: 35, height: 35, decoration: squareStyle()),
                            ),
                            Positioned(
                              left: 105,
                              top: 31,
                              child: Container(
                                  width: 35, height: 35, decoration: squareStyle()),
                            ),
                            Positioned(
                              left: 31,
                              top: 68,
                              child: Container(
                                  width: 35, height: 35, decoration: squareStyle()),
                            ),
                            Positioned(
                              left: 68,
                              top: 68,
                              child: Container(
                                  width: 35, height: 35, decoration: squareStyle()),
                            ),
                            Positioned(
                              left: 105,
                              top: 68,
                              child: Container(
                                  width: 35, height: 35, decoration: squareStyle()),
                            ),
                            Positioned(
                              left: 31,
                              top: 105,
                              child: Container(
                                  width: 35, height: 35, decoration: squareStyle()),
                            ),
                            Positioned(
                              left: 68,
                              top: 105,
                              child: Container(
                                  width: 35, height: 35, decoration: squareStyle()),
                            ),
                            Positioned(
                              left: 105,
                              top: 105,
                              child: Container(
                                  width: 35, height: 35, decoration: squareStyle()),
                            ),
                            Positioned(
                              left: 259,
                              top: 259,
                              child: Container(
                                  width: 35, height: 35, decoration: squareStyle()),
                            ),
                            Positioned(
                              left: 296,
                              top: 259,
                              child: Container(
                                  width: 35, height: 35, decoration: squareStyle()),
                            ),
                            Positioned(
                              left: 333,
                              top: 259,
                              child: Container(
                                  width: 35, height: 35, decoration: squareStyle()),
                            ),
                            Positioned(
                              left: 259,
                              top: 296,
                              child: Container(
                                  width: 35, height: 35, decoration: squareStyle()),
                            ),
                            Positioned(
                              left: 296,
                              top: 296,
                              child: Container(
                                  width: 35, height: 35, decoration: squareStyle()),
                            ),
                            Positioned(
                              left: 333,
                              top: 296,
                              child: Container(
                                  width: 35, height: 35, decoration: squareStyle()),
                            ),
                            Positioned(
                              left: 259,
                              top: 333,
                              child: Container(
                                  width: 35, height: 35, decoration: squareStyle()),
                            ),
                            Positioned(
                              left: 296,
                              top: 333,
                              child: Container(
                                  width: 35, height: 35, decoration: squareStyle()),
                            ),
                            Positioned(
                              left: 333,
                              top: 333,
                              child: Container(
                                  width: 35, height: 35, decoration: squareStyle()),
                            ),
                            Positioned(
                              left: 145,
                              top: 259,
                              child: Container(
                                  width: 35, height: 35, decoration: squareStyle()),
                            ),
                            Positioned(
                              left: 182,
                              top: 259,
                              child: Container(
                                  width: 35, height: 35, decoration: squareStyle()),
                            ),
                            Positioned(
                              left: 219,
                              top: 259,
                              child: Container(
                                  width: 35, height: 35, decoration: squareStyle()),
                            ),
                            Positioned(
                              left: 145,
                              top: 296,
                              child: Container(
                                  width: 35, height: 35, decoration: squareStyle()),
                            ),
                            Positioned(
                              left: 182,
                              top: 296,
                              child: Container(
                                  width: 35, height: 35, decoration: squareStyle()),
                            ),
                            Positioned(
                              left: 219,
                              top: 296,
                              child: Container(
                                  width: 35, height: 35, decoration: squareStyle()),
                            ),
                            Positioned(
                              left: 145,
                              top: 333,
                              child: Container(
                                  width: 35, height: 35, decoration: squareStyle()),
                            ),
                            Positioned(
                              left: 182,
                              top: 333,
                              child: Container(
                                  width: 35, height: 35, decoration: squareStyle()),
                            ),
                            Positioned(
                              left: 219,
                              top: 333,
                              child: Container(
                                  width: 35, height: 35, decoration: squareStyle()),
                            ),
                            Positioned(
                              left: 31,
                              top: 259,
                              child: Container(
                                  width: 35, height: 35, decoration: squareStyle()),
                            ),
                            Positioned(
                              left: 68,
                              top: 259,
                              child: Container(
                                  width: 35, height: 35, decoration: squareStyle()),
                            ),
                            Positioned(
                              left: 105,
                              top: 259,
                              child: Container(
                                  width: 35, height: 35, decoration: squareStyle()),
                            ),
                            Positioned(
                              left: 31,
                              top: 296,
                              child: Container(
                                  width: 35, height: 35, decoration: squareStyle()),
                            ),
                            Positioned(
                              left: 68,
                              top: 296,
                              child: Container(
                                  width: 35, height: 35, decoration: squareStyle()),
                            ),
                            Positioned(
                              left: 105,
                              top: 296,
                              child: Container(
                                  width: 35, height: 35, decoration: squareStyle()),
                            ),
                            Positioned(
                              left: 31,
                              top: 333,
                              child: Container(
                                  width: 35, height: 35, decoration: squareStyle()),
                            ),
                            Positioned(
                              left: 68,
                              top: 333,
                              child: Container(
                                  width: 35, height: 35, decoration: squareStyle()),
                            ),
                            Positioned(
                              left: 105,
                              top: 333,
                              child: Container(
                                  width: 35, height: 35, decoration: squareStyle()),
                            ),
                          ],
                        ),
                      ),
                  ],
                ),
              )
          )
        ],
      ),
    );
  }
}
