import 'package:flutter/material.dart';
import 'package:mandalart/DataModel/MandalartDto.dart';
import 'package:mandalart/util/style/MandalartStyle.dart';

import '../DataModel/Mandalart.dart';

class WidgetsForMdShow extends StatelessWidget {
  const WidgetsForMdShow({super.key, required this.mdDto});

  final MandalartDto mdDto;

  @override
  Widget build(BuildContext context) {
    switch (mdDto.mdType) {
      case 3:
        return Placeholder();
      case 6:
        return Placeholder();
      case 8:
        return SquareMdShowPage(mandalart: mdDto.mandalart);
    }

    return const Placeholder();
  }
}

class SquareMdShowPage extends StatelessWidget {
  const SquareMdShowPage({super.key, required this.mandalart});

  final Mandalart mandalart;

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
              decoration: const BoxDecoration(color: Colors.white),
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
                child: Center(child: Text(safelyGetLv2Content(mandalart, 0))),
              ),
            ),
            Positioned(
              left: 43.11,
              top: 0,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0xFFFFEDD3),
                child: Center(child: Text(safelyGetLv2Content(mandalart, 1))),
              ),
            ),
            Positioned(
              left: 86.22,
              top: 0,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0xFFE1FFD6),
                child: Center(child: Text(safelyGetLv2Content(mandalart, 2))),
              ),
            ),
            Positioned(
              left: 0,
              top: 43.11,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0xFFFED1FF),
                child: Center(child: Text(safelyGetLv2Content(mandalart, 3))),
              ),
            ),
            Positioned(
              left: 43.11,
              top: 43.11,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0xFFFFFFFF),
                child: Center(child: Text(mandalart.content)),
              ),
            ),
            Positioned(
              left: 86.22,
              top: 43.11,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0xFFCEF3F8),
                child: Center(child: Text(safelyGetLv2Content(mandalart, 4))),
              ),
            ),
            Positioned(
              left: 0,
              top: 86.22,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0xFFCDB6FF),
                child: Center(child: Text(safelyGetLv2Content(mandalart, 5))),
              ),
            ),
            Positioned(
              left: 43.11,
              top: 86.22,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0xFFACBEFF),
                child: Center(child: Text(safelyGetLv2Content(mandalart, 6))),
              ),
            ),
            Positioned(
              left: 86.22,
              top: 86.22,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0xFFA7C9FE),
                child: Center(child: Text(safelyGetLv2Content(mandalart, 7))),
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
                child:
                    Center(child: Text(safelyGetLv3Content(mandalart, 0, 0))),
              ),
            ),
            Positioned(
              left: 43.11,
              top: 0,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0x33FFD9D9),
                child:
                    Center(child: Text(safelyGetLv3Content(mandalart, 0, 1))),
              ),
            ),
            Positioned(
              left: 86.22,
              top: 0,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0x33FFD9D9),
                child:
                    Center(child: Text(safelyGetLv3Content(mandalart, 0, 2))),
              ),
            ),
            Positioned(
              left: 0,
              top: 43.11,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0x33FFD9D9),
                child:
                    Center(child: Text(safelyGetLv3Content(mandalart, 0, 3))),
              ),
            ),
            Positioned(
              left: 43.11,
              top: 43.11,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0xFFFFD9D9),
                child: Center(child: Text(safelyGetLv2Content(mandalart, 0))),
              ),
            ),
            Positioned(
              left: 86.22,
              top: 43.11,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0x33FFD9D9),
                child:
                    Center(child: Text(safelyGetLv3Content(mandalart, 0, 4))),
              ),
            ),
            Positioned(
              left: 0,
              top: 86.22,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0x33FFD9D9),
                child:
                    Center(child: Text(safelyGetLv3Content(mandalart, 0, 5))),
              ),
            ),
            Positioned(
              left: 43.11,
              top: 86.22,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0x33FFD9D9),
                child:
                    Center(child: Text(safelyGetLv3Content(mandalart, 0, 6))),
              ),
            ),
            Positioned(
              left: 86.22,
              top: 86.22,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0x33FFD9D9),
                child:
                    Center(child: Text(safelyGetLv3Content(mandalart, 0, 7))),
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
                child:
                    Center(child: Text(safelyGetLv3Content(mandalart, 1, 0))),
              ),
            ),
            Positioned(
              left: 43.11,
              top: 0,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0x33FFEED3),
                child:
                    Center(child: Text(safelyGetLv3Content(mandalart, 1, 1))),
              ),
            ),
            Positioned(
              left: 86.22,
              top: 0,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0x33FFEED3),
                child:
                    Center(child: Text(safelyGetLv3Content(mandalart, 1, 2))),
              ),
            ),
            Positioned(
              left: 0,
              top: 43.11,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0x33FFEED3),
                child:
                    Center(child: Text(safelyGetLv3Content(mandalart, 1, 3))),
              ),
            ),
            Positioned(
              left: 43.11,
              top: 43.11,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0xFFFFEED3),
                child: Center(child: Text(safelyGetLv2Content(mandalart, 1))),
              ),
            ),
            Positioned(
              left: 86.22,
              top: 43.11,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0x33FFEED3),
                child:
                    Center(child: Text(safelyGetLv3Content(mandalart, 1, 4))),
              ),
            ),
            Positioned(
              left: 0,
              top: 86.22,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0x33FFEED3),
                child:
                    Center(child: Text(safelyGetLv3Content(mandalart, 1, 5))),
              ),
            ),
            Positioned(
              left: 43.11,
              top: 86.22,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0x33FFEED3),
                child:
                    Center(child: Text(safelyGetLv3Content(mandalart, 1, 6))),
              ),
            ),
            Positioned(
              left: 86.22,
              top: 86.22,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0x33FFEED3),
                child:
                    Center(child: Text(safelyGetLv3Content(mandalart, 1, 7))),
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
                child:
                    Center(child: Text(safelyGetLv3Content(mandalart, 2, 0))),
              ),
            ),
            Positioned(
              left: 43.11,
              top: 0,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0x33E1FFD7),
                child:
                    Center(child: Text(safelyGetLv3Content(mandalart, 2, 1))),
              ),
            ),
            Positioned(
              left: 86.22,
              top: 0,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0x33E1FFD7),
                child:
                    Center(child: Text(safelyGetLv3Content(mandalart, 2, 2))),
              ),
            ),
            Positioned(
              left: 0,
              top: 43.11,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0x33E1FFD7),
                child:
                    Center(child: Text(safelyGetLv3Content(mandalart, 2, 3))),
              ),
            ),
            Positioned(
              left: 43.11,
              top: 43.11,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0xFFE1FFD7),
                child: Center(child: Text(safelyGetLv2Content(mandalart, 2))),
              ),
            ),
            Positioned(
              left: 86.22,
              top: 43.11,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0x33E1FFD7),
                child:
                    Center(child: Text(safelyGetLv3Content(mandalart, 2, 4))),
              ),
            ),
            Positioned(
              left: 0,
              top: 86.22,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0x33E1FFD7),
                child:
                    Center(child: Text(safelyGetLv3Content(mandalart, 2, 5))),
              ),
            ),
            Positioned(
              left: 43.11,
              top: 86.22,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0x33E1FFD7),
                child:
                    Center(child: Text(safelyGetLv3Content(mandalart, 2, 6))),
              ),
            ),
            Positioned(
              left: 86.22,
              top: 86.22,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0x33E1FFD7),
                child:
                    Center(child: Text(safelyGetLv3Content(mandalart, 2, 7))),
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
                child:
                    Center(child: Text(safelyGetLv3Content(mandalart, 3, 0))),
              ),
            ),
            Positioned(
              left: 43.11,
              top: 0,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0x33FED1FF),
                child:
                    Center(child: Text(safelyGetLv3Content(mandalart, 3, 1))),
              ),
            ),
            Positioned(
              left: 86.22,
              top: 0,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0x33FED1FF),
                child:
                    Center(child: Text(safelyGetLv3Content(mandalart, 3, 2))),
              ),
            ),
            Positioned(
              left: 0,
              top: 43.11,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0x33FED1FF),
                child:
                    Center(child: Text(safelyGetLv3Content(mandalart, 3, 3))),
              ),
            ),
            Positioned(
              left: 43.11,
              top: 43.11,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0xFFFED1FF),
                child: Center(child: Text(safelyGetLv2Content(mandalart, 3))),
              ),
            ),
            Positioned(
              left: 86.22,
              top: 43.11,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0x33FED1FF),
                child:
                    Center(child: Text(safelyGetLv3Content(mandalart, 3, 4))),
              ),
            ),
            Positioned(
              left: 0,
              top: 86.22,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0x33FED1FF),
                child:
                    Center(child: Text(safelyGetLv3Content(mandalart, 3, 5))),
              ),
            ),
            Positioned(
              left: 43.11,
              top: 86.22,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0x33FED1FF),
                child:
                    Center(child: Text(safelyGetLv3Content(mandalart, 3, 6))),
              ),
            ),
            Positioned(
              left: 86.22,
              top: 86.22,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0x33FED1FF),
                child:
                    Center(child: Text(safelyGetLv3Content(mandalart, 3, 7))),
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
                child:
                    Center(child: Text(safelyGetLv3Content(mandalart, 4, 0))),
              ),
            ),
            Positioned(
              left: 43.11,
              top: 0,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0x33CEF3F8),
                child:
                    Center(child: Text(safelyGetLv3Content(mandalart, 4, 1))),
              ),
            ),
            Positioned(
              left: 86.22,
              top: 0,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0x33CEF3F8),
                child:
                    Center(child: Text(safelyGetLv3Content(mandalart, 4, 2))),
              ),
            ),
            Positioned(
              left: 0,
              top: 43.11,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0x33CEF3F8),
                child:
                    Center(child: Text(safelyGetLv3Content(mandalart, 4, 3))),
              ),
            ),
            Positioned(
              left: 43.11,
              top: 43.11,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0xFFCEF3F8),
                child: Center(child: Text(safelyGetLv2Content(mandalart, 4))),
              ),
            ),
            Positioned(
              left: 86.22,
              top: 43.11,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0x33CEF3F8),
                child:
                    Center(child: Text(safelyGetLv3Content(mandalart, 4, 4))),
              ),
            ),
            Positioned(
              left: 0,
              top: 86.22,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0x33CEF3F8),
                child:
                    Center(child: Text(safelyGetLv3Content(mandalart, 4, 5))),
              ),
            ),
            Positioned(
              left: 43.11,
              top: 86.22,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0x33CEF3F8),
                child:
                    Center(child: Text(safelyGetLv3Content(mandalart, 4, 6))),
              ),
            ),
            Positioned(
              left: 86.22,
              top: 86.22,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0x33CEF3F8),
                child:
                    Center(child: Text(safelyGetLv3Content(mandalart, 4, 7))),
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
                child:
                    Center(child: Text(safelyGetLv3Content(mandalart, 5, 0))),
              ),
            ),
            Positioned(
              left: 43.11,
              top: 0,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0x33CDB6FF),
                child:
                    Center(child: Text(safelyGetLv3Content(mandalart, 5, 1))),
              ),
            ),
            Positioned(
              left: 86.22,
              top: 0,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0x33CDB6FF),
                child:
                    Center(child: Text(safelyGetLv3Content(mandalart, 5, 2))),
              ),
            ),
            Positioned(
              left: 0,
              top: 43.11,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0x33CDB6FF),
                child:
                    Center(child: Text(safelyGetLv3Content(mandalart, 5, 3))),
              ),
            ),
            Positioned(
              left: 43.11,
              top: 43.11,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0xFFCDB6FF),
                child: Center(child: Text(safelyGetLv2Content(mandalart, 5))),
              ),
            ),
            Positioned(
              left: 86.22,
              top: 43.11,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0x33CDB6FF),
                child:
                    Center(child: Text(safelyGetLv3Content(mandalart, 5, 4))),
              ),
            ),
            Positioned(
              left: 0,
              top: 86.22,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0x33CDB6FF),
                child:
                    Center(child: Text(safelyGetLv3Content(mandalart, 5, 5))),
              ),
            ),
            Positioned(
              left: 43.11,
              top: 86.22,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0x33CDB6FF),
                child:
                    Center(child: Text(safelyGetLv3Content(mandalart, 5, 6))),
              ),
            ),
            Positioned(
              left: 86.22,
              top: 86.22,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0x33CDB6FF),
                child:
                    Center(child: Text(safelyGetLv3Content(mandalart, 5, 7))),
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
                child:
                    Center(child: Text(safelyGetLv3Content(mandalart, 6, 0))),
              ),
            ),
            Positioned(
              left: 43.11,
              top: 0,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0x33ACBFFF),
                child:
                    Center(child: Text(safelyGetLv3Content(mandalart, 6, 1))),
              ),
            ),
            Positioned(
              left: 86.22,
              top: 0,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0x33ACBFFF),
                child:
                    Center(child: Text(safelyGetLv3Content(mandalart, 6, 2))),
              ),
            ),
            Positioned(
              left: 0,
              top: 43.11,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0x33ACBFFF),
                child:
                    Center(child: Text(safelyGetLv3Content(mandalart, 6, 3))),
              ),
            ),
            Positioned(
              left: 43.11,
              top: 43.11,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0xFFACBFFF),
                child: Center(child: Text(safelyGetLv2Content(mandalart, 6))),
              ),
            ),
            Positioned(
              left: 86.22,
              top: 43.11,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0x33ACBFFF),
                child:
                    Center(child: Text(safelyGetLv3Content(mandalart, 6, 4))),
              ),
            ),
            Positioned(
              left: 0,
              top: 86.22,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0x33ACBFFF),
                child:
                    Center(child: Text(safelyGetLv3Content(mandalart, 6, 5))),
              ),
            ),
            Positioned(
              left: 43.11,
              top: 86.22,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0x33ACBFFF),
                child:
                    Center(child: Text(safelyGetLv3Content(mandalart, 6, 6))),
              ),
            ),
            Positioned(
              left: 86.22,
              top: 86.22,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0x33ACBFFF),
                child:
                    Center(child: Text(safelyGetLv3Content(mandalart, 6, 7))),
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
                child:
                    Center(child: Text(safelyGetLv3Content(mandalart, 7, 0))),
              ),
            ),
            Positioned(
              left: 43.11,
              top: 0,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0x33A7CAFE),
                child:
                    Center(child: Text(safelyGetLv3Content(mandalart, 7, 1))),
              ),
            ),
            Positioned(
              left: 86.22,
              top: 0,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0x33A7CAFE),
                child:
                    Center(child: Text(safelyGetLv3Content(mandalart, 7, 2))),
              ),
            ),
            Positioned(
              left: 0,
              top: 43.11,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0x33A7CAFE),
                child:
                    Center(child: Text(safelyGetLv3Content(mandalart, 7, 3))),
              ),
            ),
            Positioned(
              left: 43.11,
              top: 43.11,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0xFFA7CAFE),
                child: Center(child: Text(safelyGetLv2Content(mandalart, 7))),
              ),
            ),
            Positioned(
              left: 86.22,
              top: 43.11,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0x33A7CAFE),
                child:
                    Center(child: Text(safelyGetLv3Content(mandalart, 7, 4))),
              ),
            ),
            Positioned(
              left: 0,
              top: 86.22,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0x33A7CAFE),
                child:
                    Center(child: Text(safelyGetLv3Content(mandalart, 7, 5))),
              ),
            ),
            Positioned(
              left: 43.11,
              top: 86.22,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0x33A7CAFE),
                child:
                    Center(child: Text(safelyGetLv3Content(mandalart, 7, 6))),
              ),
            ),
            Positioned(
              left: 86.22,
              top: 86.22,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0x33A7CAFE),
                child:
                    Center(child: Text(safelyGetLv3Content(mandalart, 7, 7))),
              ),
            ),
          ],
        ),
      ),
    );
  }

  String safelyGetLv3Content(Mandalart mandalart, int lv2, int lv3) {
    try {
      return mandalart.specificGoals[lv2].specificGoals[lv3].content;
    } catch (e) {
      return '';
    }
  }

  String safelyGetLv2Content(Mandalart mandalart, int lv2) {
    try {
      return mandalart.specificGoals[lv2].content;
    } catch (e) {
      return '';
    }
  }
}
