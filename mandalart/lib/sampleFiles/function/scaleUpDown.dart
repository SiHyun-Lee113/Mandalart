import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Pinch and Spread Gesture Example'),
        ),
        body: PinchAndSpreadExample(),
      ),
    );
  }
}

class PinchAndSpreadExample extends StatefulWidget {
  @override
  _PinchAndSpreadExampleState createState() => _PinchAndSpreadExampleState();
}

class _PinchAndSpreadExampleState extends State<PinchAndSpreadExample> {
  double _scale = 1.0;
  double _previousScale = 1.0;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onScaleUpdate: (ScaleUpdateDetails details) {
        setState(() {
          _scale = _previousScale * details.scale;
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
            child: Transform.scale(scale: _scale, child: IpadMini831()),
          ),
        ],
      )
    );
  }
}

class IpadMini831 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 307,
          height: 359,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(color: Colors.white),
          child: Stack(
            children: [
              Positioned(
                left: 11,
                top: 233,
                child: Container(
                  width: 77,
                  height: 79,
                  decoration: ShapeDecoration(
                    color: Color(0xFFD9D9D9),
                    shape: StarBorder.polygon(
                      side: BorderSide(width: 1),
                      sides: 3,
                      pointRounding : 0.1,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 81,
                top: 233,
                child: Container(
                  width: 76,
                  height: 79,
                  decoration: ShapeDecoration(
                    color: Color(0xFFD9D9D9),
                    shape: StarBorder.polygon(
                      side: BorderSide(width: 1),
                      sides: 3,
                      pointRounding : 0.1,
                    ),
                    shadows: [
                      BoxShadow(
                        color: Color(0x3F000000),
                        blurRadius: 4,
                        offset: Offset(0, 4),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 46,
                top: 171,
                child: Container(
                  width: 77,
                  height: 79,
                  decoration: ShapeDecoration(
                    color: Color(0xFFD9D9D9),
                    shape: StarBorder.polygon(
                      side: BorderSide(width: 1),
                      sides: 3,
                      pointRounding : 0.1,
                    ),
                    shadows: [
                      BoxShadow(
                        color: Color(0x3F000000),
                        blurRadius: 4,
                        offset: Offset(0, 4),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 123,
                top: 291,
                child: Transform(
                  transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(3.14),
                  child: Container(
                    width: 77,
                    height: 79,
                    decoration: ShapeDecoration(
                      color: Color(0xFFD9D9D9),
                      shape: StarBorder.polygon(
                        side: BorderSide(width: 1),
                        sides: 3,
                        pointRounding : 0.1,
                      ),
                      shadows: [
                        BoxShadow(
                          color: Color(0x3F000000),
                          blurRadius: 4,
                          offset: Offset(0, 4),
                          spreadRadius: 0,
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 150,
                top: 233,
                child: Container(
                  width: 76,
                  height: 79,
                  decoration: ShapeDecoration(
                    color: Color(0xFFD9D9D9),
                    shape: StarBorder.polygon(
                      side: BorderSide(width: 1),
                      sides: 3,
                      pointRounding : 0.1,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 219,
                top: 233,
                child: Container(
                  width: 77,
                  height: 79,
                  decoration: ShapeDecoration(
                    color: Color(0xFFD9D9D9),
                    shape: StarBorder.polygon(
                      side: BorderSide(width: 1),
                      sides: 3,
                      pointRounding : 0.1,
                    ),
                    shadows: [
                      BoxShadow(
                        color: Color(0x3F000000),
                        blurRadius: 4,
                        offset: Offset(0, 4),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 184,
                top: 171,
                child: Container(
                  width: 77,
                  height: 79,
                  decoration: ShapeDecoration(
                    color: Color(0xFFD9D9D9),
                    shape: StarBorder.polygon(
                      side: BorderSide(width: 1),
                      sides: 3,
                      pointRounding : 0.1,
                    ),
                    shadows: [
                      BoxShadow(
                        color: Color(0x3F000000),
                        blurRadius: 4,
                        offset: Offset(0, 4),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 261,
                top: 291,
                child: Transform(
                  transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(3.14),
                  child: Container(
                    width: 77,
                    height: 79,
                    decoration: ShapeDecoration(
                      color: Color(0xFFD9D9D9),
                      shape: StarBorder.polygon(
                        side: BorderSide(width: 1),
                        sides: 3,
                        pointRounding : 0.1,
                      ),
                      shadows: [
                        BoxShadow(
                          color: Color(0x3F000000),
                          blurRadius: 4,
                          offset: Offset(0, 4),
                          spreadRadius: 0,
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 81,
                top: 109,
                child: Container(
                  width: 76,
                  height: 79,
                  decoration: ShapeDecoration(
                    color: Color(0xFFD9D9D9),
                    shape: StarBorder.polygon(
                      side: BorderSide(width: 1),
                      sides: 3,
                      pointRounding : 0.1,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 150,
                top: 109,
                child: Container(
                  width: 77,
                  height: 79,
                  decoration: ShapeDecoration(
                    color: Color(0xFFD9D9D9),
                    shape: StarBorder.polygon(
                      side: BorderSide(width: 1),
                      sides: 3,
                      pointRounding : 0.1,
                    ),
                    shadows: [
                      BoxShadow(
                        color: Color(0x3F000000),
                        blurRadius: 4,
                        offset: Offset(0, 4),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 115,
                top: 47,
                child: Container(
                  width: 77,
                  height: 79,
                  decoration: ShapeDecoration(
                    color: Color(0xFFD9D9D9),
                    shape: StarBorder.polygon(
                      side: BorderSide(width: 1),
                      sides: 3,
                      pointRounding : 0.1,
                    ),
                    shadows: [
                      BoxShadow(
                        color: Color(0x3F000000),
                        blurRadius: 4,
                        offset: Offset(0, 4),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 192,
                top: 167,
                child: Transform(
                  transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(3.14),
                  child: Container(
                    width: 77,
                    height: 79,
                    decoration: ShapeDecoration(
                      color: Color(0xFFD9D9D9),
                      shape: StarBorder.polygon(
                        side: BorderSide(width: 1),
                        sides: 3,
                        pointRounding : 0.1,
                      ),
                      shadows: [
                        BoxShadow(
                          color: Color(0x3F000000),
                          blurRadius: 4,
                          offset: Offset(0, 4),
                          spreadRadius: 0,
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 227,
                top: 229,
                child: Transform(
                  transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(3.14),
                  child: Container(
                    width: 77,
                    height: 79,
                    decoration: ShapeDecoration(
                      color: Color(0xFFD9D9D9),
                      shape: StarBorder.polygon(
                        side: BorderSide(width: 1),
                        sides: 3,
                        pointRounding : 0.1,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 157,
                top: 229,
                child: Transform(
                  transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(3.14),
                  child: Container(
                    width: 76,
                    height: 79,
                    decoration: ShapeDecoration(
                      color: Color(0xFFD9D9D9),
                      shape: StarBorder.polygon(
                        side: BorderSide(width: 1),
                        sides: 3,
                        pointRounding : 0.1,
                      ),
                      shadows: [
                        BoxShadow(
                          color: Color(0x3F000000),
                          blurRadius: 4,
                          offset: Offset(0, 4),
                          spreadRadius: 0,
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 192,
                top: 291,
                child: Transform(
                  transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(3.14),
                  child: Container(
                    width: 77,
                    height: 79,
                    decoration: ShapeDecoration(
                      color: Color(0xFFD9D9D9),
                      shape: StarBorder.polygon(
                        side: BorderSide(width: 1),
                        sides: 3,
                        pointRounding : 0.1,
                      ),
                      shadows: [
                        BoxShadow(
                          color: Color(0x3F000000),
                          blurRadius: 4,
                          offset: Offset(0, 4),
                          spreadRadius: 0,
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 115,
                top: 171,
                child: Container(
                  width: 77,
                  height: 79,
                  decoration: ShapeDecoration(
                    color: Color(0xFFD9D9D9),
                    shape: StarBorder.polygon(
                      side: BorderSide(width: 1),
                      sides: 3,
                      pointRounding : 0.1,
                    ),
                    shadows: [
                      BoxShadow(
                        color: Color(0x3F000000),
                        blurRadius: 4,
                        offset: Offset(0, 4),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 129,
                top: 76,
                child: SizedBox(
                  width: 49,
                  height: 16,
                  child: Text(
                    'lv1_1_1',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 10,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 94,
                top: 133,
                child: SizedBox(
                  width: 50,
                  height: 17,
                  child: Text(
                    'lv1_1_3',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 10,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 164,
                top: 133,
                child: SizedBox(
                  width: 50,
                  height: 17,
                  child: Text(
                    'lv1_1_2',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 10,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 129,
                top: 122,
                child: SizedBox(
                  width: 50,
                  height: 17,
                  child: Text(
                    'lv1_1',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 10,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 94,
                top: 182,
                child: SizedBox(
                  width: 49,
                  height: 16,
                  child: Text(
                    'lv1_1',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 10,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 129,
                top: 201,
                child: SizedBox(
                  width: 49,
                  height: 16,
                  child: Text(
                    'lv1',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 10,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 164,
                top: 182,
                child: SizedBox(
                  width: 50,
                  height: 16,
                  child: Text(
                    'lv1_2',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 10,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 198,
                top: 201,
                child: SizedBox(
                  width: 50,
                  height: 16,
                  child: Text(
                    'lv1_2_1',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 10,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 59,
                top: 201,
                child: SizedBox(
                  width: 50,
                  height: 16,
                  child: Text(
                    'lv1_3_1',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 10,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 24,
                top: 261,
                child: SizedBox(
                  width: 49,
                  height: 17,
                  child: Text(
                    'lv1_3_3',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 10,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 59,
                top: 245,
                child: SizedBox(
                  width: 50,
                  height: 16,
                  child: Text(
                    'lv1_3',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 10,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 94,
                top: 261,
                child: SizedBox(
                  width: 50,
                  height: 17,
                  child: Text(
                    'lv1_3_3',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 10,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 129,
                top: 245,
                child: SizedBox(
                  width: 49,
                  height: 16,
                  child: Text(
                    'lv1_3',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 10,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 163,
                top: 261,
                child: SizedBox(
                  width: 49,
                  height: 17,
                  child: Text(
                    'lv1_2_3',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 10,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 198,
                top: 245,
                child: SizedBox(
                  width: 50,
                  height: 16,
                  child: Text(
                    'lv2_2',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 10,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 233,
                top: 261,
                child: SizedBox(
                  width: 49,
                  height: 17,
                  child: Text(
                    'lv1_2_3',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 10,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}