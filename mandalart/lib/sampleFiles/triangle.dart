import 'dart:math';
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
          title: Text('Nested Equilateral Triangle'),
        ),
        body: Center(
          child: TestApp(),
        ),
      ),
    );
  }
}

class TestApp extends StatelessWidget {
  const TestApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 430,
          height: 932,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(color: Colors.white),
          child: Stack(
            children: [
              Positioned(
                left: -23,
                top: 533,
                child: Container(
                  width: 134,
                  height: 118,
                  decoration: ShapeDecoration(
                    color: Color(0xFFD9D9D9),
                    shape: StarBorder.polygon(
                      side: BorderSide(width: 1),
                      sides: 3,
                      //borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 98,
                top: 533,
                child: Container(
                  width: 134,
                  height: 118,
                  decoration: ShapeDecoration(
                    color: Color(0xFFD9D9D9),
                    shape: StarBorder.polygon(
                      side: BorderSide(width: 1),
                      sides: 3,
                      //borderRadius: BorderRadius.circular(5),
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
                left: 38,
                top: 441,
                child: Container(
                  width: 134,
                  height: 118,
                  decoration: ShapeDecoration(
                    color: Color(0xFFD9D9D9),
                    shape: StarBorder.polygon(
                      side: BorderSide(width: 1),
                      sides: 3,
                      //borderRadius: BorderRadius.circular(5),
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
                left: 172,
                top: 620,
                child: Transform(
                  transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(3.14),
                  child: Container(
                    width: 134,
                    height: 118,
                    decoration: ShapeDecoration(
                      color: Color(0xFFD9D9D9),
                      shape: StarBorder.polygon(
                        side: BorderSide(width: 1),
                        sides: 3,
                        //borderRadius: BorderRadius.circular(5),
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
                left: 219,
                top: 533,
                child: Container(
                  width: 134,
                  height: 118,
                  decoration: ShapeDecoration(
                    color: Color(0xFFD9D9D9),
                    shape: StarBorder.polygon(
                      side: BorderSide(width: 1),
                      sides: 3,
                      //borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 340,
                top: 533,
                child: Container(
                  width: 134,
                  height: 118,
                  decoration: ShapeDecoration(
                    color: Color(0xFFD9D9D9),
                    shape: StarBorder.polygon(
                      side: BorderSide(width: 1),
                      sides: 3,
                      //borderRadius: BorderRadius.circular(5),
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
                left: 280,
                top: 441,
                child: Container(
                  width: 134,
                  height: 118,
                  decoration: ShapeDecoration(
                    color: Color(0xFFD9D9D9),
                    shape: StarBorder.polygon(
                      side: BorderSide(width: 1),
                      sides: 3,
                      //borderRadius: BorderRadius.circular(5),
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
                left: 414,
                top: 620,
                child: Transform(
                  transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(3.14),
                  child: Container(
                    width: 134,
                    height: 118,
                    decoration: ShapeDecoration(
                      color: Color(0xFFD9D9D9),
                      shape: StarBorder.polygon(
                        side: BorderSide(width: 1),
                        sides: 3,
                        //borderRadius: BorderRadius.circular(5),
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
                left: 98,
                top: 348,
                child: Container(
                  width: 134,
                  height: 118,
                  decoration: ShapeDecoration(
                    color: Color(0xFFD9D9D9),
                    shape: StarBorder.polygon(
                      side: BorderSide(width: 1),
                      sides: 3,
                      //borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 219,
                top: 348,
                child: Container(
                  width: 134,
                  height: 118,
                  decoration: ShapeDecoration(
                    color: Color(0xFFD9D9D9),
                    shape: StarBorder.polygon(
                      side: BorderSide(width: 1),
                      sides: 3,
                      //borderRadius: BorderRadius.circular(5),
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
                left: 159,
                top: 256,
                child: Container(
                  width: 134,
                  height: 118,
                  decoration: ShapeDecoration(
                    color: Color(0xFFD9D9D9),
                    shape: StarBorder.polygon(
                      side: BorderSide(width: 1),
                      sides: 3,
                      //borderRadius: BorderRadius.circular(5),
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
                left: 293,
                top: 435,
                child: Transform(
                  transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(3.14),
                  child: Container(
                    width: 134,
                    height: 118,
                    decoration: ShapeDecoration(
                      color: Color(0xFFD9D9D9),
                      shape: StarBorder.polygon(
                        side: BorderSide(width: 1),
                        sides: 3,
                        //borderRadius: BorderRadius.circular(5),
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
                left: 353,
                top: 528,
                child: Transform(
                  transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(-3.14),
                  child: Container(
                    width: 134,
                    height: 118,
                    decoration: ShapeDecoration(
                      color: Color(0xFFD9D9D9),
                      shape: StarBorder.polygon(
                        side: BorderSide(width: 1),
                        sides: 3,
                        //borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 232,
                top: 528,
                child: Transform(
                  transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(-3.14),
                  child: Container(
                    width: 134,
                    height: 118,
                    decoration: ShapeDecoration(
                      color: Color(0xFFD9D9D9),
                      shape: StarBorder.polygon(
                        side: BorderSide(width: 1),
                        sides: 3,
                        //borderRadius: BorderRadius.circular(5),
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
                left: 292,
                top: 620,
                child: Transform(
                  transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(-3.14),
                  child: Container(
                    width: 134,
                    height: 118,
                    decoration: ShapeDecoration(
                      color: Color(0xFFD9D9D9),
                      shape: StarBorder.polygon(
                        side: BorderSide(width: 1),
                        sides: 3,
                        //borderRadius: BorderRadius.circular(5),
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
                left: 158,
                top: 441,
                child: Container(
                  width: 134,
                  height: 118,
                  decoration: ShapeDecoration(
                    color: Color(0xFFD9D9D9),
                    shape: StarBorder.polygon(
                      side: BorderSide(width: 1),
                      sides: 3,
                      //borderRadius: BorderRadius.circular(5),
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
            ],
          ),
        )
      ],
    );
  }
}


class EquilateralTriangle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(200, 200),
      painter: TrianglePainter(),
      child: Center(
        child: Text(
          'Your Text Here',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}

class TrianglePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final double sideLength = min(size.width, size.height);
    final double centerX = size.width / 2;
    final double centerY = size.height / 2;
    final double radius = sideLength / 2;
    final double height = sqrt(3) * sideLength / 2;

    Paint paint = Paint()
      ..color = Colors.blue
      ..style = PaintingStyle.fill;

    // Draw the outer equilateral triangle
    final pathA = Path()
      ..moveTo(centerX - radius, centerY + height / 2)
      ..lineTo(centerX + radius, centerY + height / 2)
      ..lineTo(centerX, centerY - height / 2)
      ..close();
    canvas.drawPath(pathA, paint);

    // Draw the middle equilateral triangle
    final pathB = Path()
      ..moveTo(centerX - radius / 2, centerY + height / 4)
      ..lineTo(centerX + radius / 2, centerY + height / 4)
      ..lineTo(centerX, centerY - height / 4)
      ..close();
    canvas.drawPath(pathB, paint);

    // Draw the inner equilateral triangle
    final pathC = Path()
      ..moveTo(centerX - radius / 4, centerY + height / 8)
      ..lineTo(centerX + radius / 4, centerY + height / 8)
      ..lineTo(centerX, centerY - height / 8)
      ..close();
    canvas.drawPath(pathC, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}