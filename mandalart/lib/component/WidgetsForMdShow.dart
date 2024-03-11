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
                child: Center(child: Text(mandalart.specificGoals[0].content)),
              ),
            ),
            Positioned(
              left: 43.11,
              top: 0,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0xFFFFEDD3),
                child: Center(child: Text(mandalart.specificGoals[1].content)),
              ),
            ),
            Positioned(
              left: 86.22,
              top: 0,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0xFFE1FFD6),
                child: Center(child: Text(mandalart.specificGoals[2].content)),
              ),
            ),
            Positioned(
              left: 0,
              top: 43.11,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0xFFFED1FF),
                child: Center(child: Text(mandalart.specificGoals[3].content)),
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
                child: Center(child: Text(mandalart.specificGoals[4].content)),
              ),
            ),
            Positioned(
              left: 0,
              top: 86.22,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0xFFCDB6FF),
                child: Center(child: Text(mandalart.specificGoals[5].content)),
              ),
            ),
            Positioned(
              left: 43.11,
              top: 86.22,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0xFFACBEFF),
                child: Center(child: Text(mandalart.specificGoals[6].content)),
              ),
            ),
            Positioned(
              left: 86.22,
              top: 86.22,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0xFFA7C9FE),
                child: Center(child: Text(mandalart.specificGoals[7].content)),
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
                child: Center(
                    child: Text(
                        mandalart.specificGoals[0].specificGoals[0].content)),
              ),
            ),
            Positioned(
              left: 43.11,
              top: 0,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0x33FFD9D9),
                child: Center(
                    child: Text(
                        mandalart.specificGoals[0].specificGoals[1].content)),
              ),
            ),
            Positioned(
              left: 86.22,
              top: 0,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0x33FFD9D9),
                child: Center(
                    child: Text(
                        mandalart.specificGoals[0].specificGoals[2].content)),
              ),
            ),
            Positioned(
              left: 0,
              top: 43.11,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0x33FFD9D9),
                child: Center(
                    child: Text(
                        mandalart.specificGoals[0].specificGoals[3].content)),
              ),
            ),
            Positioned(
              left: 43.11,
              top: 43.11,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0xFFFFD9D9),
                child: Center(child: Text(mandalart.specificGoals[0].content)),
              ),
            ),
            Positioned(
              left: 86.22,
              top: 43.11,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0x33FFD9D9),
                child: Center(
                    child: Text(
                        mandalart.specificGoals[0].specificGoals[4].content)),
              ),
            ),
            Positioned(
              left: 0,
              top: 86.22,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0x33FFD9D9),
                child: Center(
                    child: Text(
                        mandalart.specificGoals[0].specificGoals[5].content)),
              ),
            ),
            Positioned(
              left: 43.11,
              top: 86.22,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0x33FFD9D9),
                child: Center(
                    child: Text(
                        mandalart.specificGoals[0].specificGoals[6].content)),
              ),
            ),
            Positioned(
              left: 86.22,
              top: 86.22,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0x33FFD9D9),
                child: Center(
                    child: Text(
                        mandalart.specificGoals[0].specificGoals[7].content)),
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
                child: Center(
                    child: Text(
                        mandalart.specificGoals[1].specificGoals[0].content)),
              ),
            ),
            Positioned(
              left: 43.11,
              top: 0,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0x33FFEED3),
                child: Center(
                    child: Text(
                        mandalart.specificGoals[1].specificGoals[1].content)),
              ),
            ),
            Positioned(
              left: 86.22,
              top: 0,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0x33FFEED3),
                child: Center(
                    child: Text(
                        mandalart.specificGoals[1].specificGoals[2].content)),
              ),
            ),
            Positioned(
              left: 0,
              top: 43.11,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0x33FFEED3),
                child: Center(
                    child: Text(
                        mandalart.specificGoals[1].specificGoals[3].content)),
              ),
            ),
            Positioned(
              left: 43.11,
              top: 43.11,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0xFFFFEED3),
                child: Center(child: Text(mandalart.specificGoals[1].content)),
              ),
            ),
            Positioned(
              left: 86.22,
              top: 43.11,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0x33FFEED3),
                child: Center(
                    child: Text(
                        mandalart.specificGoals[1].specificGoals[4].content)),
              ),
            ),
            Positioned(
              left: 0,
              top: 86.22,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0x33FFEED3),
                child: Center(
                    child: Text(
                        mandalart.specificGoals[1].specificGoals[5].content)),
              ),
            ),
            Positioned(
              left: 43.11,
              top: 86.22,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0x33FFEED3),
                child: Center(
                    child: Text(
                        mandalart.specificGoals[1].specificGoals[6].content)),
              ),
            ),
            Positioned(
              left: 86.22,
              top: 86.22,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0x33FFEED3),
                child: Center(
                    child: Text(
                        mandalart.specificGoals[1].specificGoals[7].content)),
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
                child: Center(
                    child: Text(
                        mandalart.specificGoals[2].specificGoals[0].content)),
              ),
            ),
            Positioned(
              left: 43.11,
              top: 0,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0x33E1FFD7),
                child: Center(
                    child: Text(
                        mandalart.specificGoals[2].specificGoals[1].content)),
              ),
            ),
            Positioned(
              left: 86.22,
              top: 0,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0x33E1FFD7),
                child: Center(
                    child: Text(
                        mandalart.specificGoals[2].specificGoals[2].content)),
              ),
            ),
            Positioned(
              left: 0,
              top: 43.11,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0x33E1FFD7),
                child: Center(
                    child: Text(
                        mandalart.specificGoals[2].specificGoals[3].content)),
              ),
            ),
            Positioned(
              left: 43.11,
              top: 43.11,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0xFFE1FFD7),
                child: Center(child: Text(mandalart.specificGoals[2].content)),
              ),
            ),
            Positioned(
              left: 86.22,
              top: 43.11,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0x33E1FFD7),
                child: Center(
                    child: Text(
                        mandalart.specificGoals[2].specificGoals[4].content)),
              ),
            ),
            Positioned(
              left: 0,
              top: 86.22,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0x33E1FFD7),
                child: Center(
                    child: Text(
                        mandalart.specificGoals[2].specificGoals[5].content)),
              ),
            ),
            Positioned(
              left: 43.11,
              top: 86.22,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0x33E1FFD7),
                child: Center(
                    child: Text(
                        mandalart.specificGoals[2].specificGoals[6].content)),
              ),
            ),
            Positioned(
              left: 86.22,
              top: 86.22,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0x33E1FFD7),
                child: Center(
                    child: Text(
                        mandalart.specificGoals[2].specificGoals[7].content)),
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
                child: Center(
                    child: Text(
                        mandalart.specificGoals[3].specificGoals[0].content)),
              ),
            ),
            Positioned(
              left: 43.11,
              top: 0,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0x33FED1FF),
                child: Center(
                    child: Text(
                        mandalart.specificGoals[3].specificGoals[1].content)),
              ),
            ),
            Positioned(
              left: 86.22,
              top: 0,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0x33FED1FF),
                child: Center(
                    child: Text(
                        mandalart.specificGoals[3].specificGoals[2].content)),
              ),
            ),
            Positioned(
              left: 0,
              top: 43.11,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0x33FED1FF),
                child: Center(
                    child: Text(
                        mandalart.specificGoals[3].specificGoals[3].content)),
              ),
            ),
            Positioned(
              left: 43.11,
              top: 43.11,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0xFFFED1FF),
                child: Center(child: Text(mandalart.specificGoals[3].content)),
              ),
            ),
            Positioned(
              left: 86.22,
              top: 43.11,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0x33FED1FF),
                child: Center(
                    child: Text(
                        mandalart.specificGoals[3].specificGoals[4].content)),
              ),
            ),
            Positioned(
              left: 0,
              top: 86.22,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0x33FED1FF),
                child: Center(
                    child: Text(
                        mandalart.specificGoals[3].specificGoals[5].content)),
              ),
            ),
            Positioned(
              left: 43.11,
              top: 86.22,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0x33FED1FF),
                child: Center(
                    child: Text(
                        mandalart.specificGoals[3].specificGoals[6].content)),
              ),
            ),
            Positioned(
              left: 86.22,
              top: 86.22,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0x33FED1FF),
                child: Center(
                    child: Text(
                        mandalart.specificGoals[3].specificGoals[7].content)),
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
                child: Center(
                    child: Text(
                        mandalart.specificGoals[4].specificGoals[0].content)),
              ),
            ),
            Positioned(
              left: 43.11,
              top: 0,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0x33CEF3F8),
                child: Center(
                    child: Text(
                        mandalart.specificGoals[4].specificGoals[1].content)),
              ),
            ),
            Positioned(
              left: 86.22,
              top: 0,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0x33CEF3F8),
                child: Center(
                    child: Text(
                        mandalart.specificGoals[4].specificGoals[2].content)),
              ),
            ),
            Positioned(
              left: 0,
              top: 43.11,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0x33CEF3F8),
                child: Center(
                    child: Text(
                        mandalart.specificGoals[4].specificGoals[3].content)),
              ),
            ),
            Positioned(
              left: 43.11,
              top: 43.11,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0xFFCEF3F8),
                child: Center(child: Text(mandalart.specificGoals[4].content)),
              ),
            ),
            Positioned(
              left: 86.22,
              top: 43.11,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0x33CEF3F8),
                child: Center(
                    child: Text(
                        mandalart.specificGoals[4].specificGoals[4].content)),
              ),
            ),
            Positioned(
              left: 0,
              top: 86.22,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0x33CEF3F8),
                child: Center(
                    child: Text(
                        mandalart.specificGoals[4].specificGoals[5].content)),
              ),
            ),
            Positioned(
              left: 43.11,
              top: 86.22,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0x33CEF3F8),
                child: Center(
                    child: Text(
                        mandalart.specificGoals[4].specificGoals[6].content)),
              ),
            ),
            Positioned(
              left: 86.22,
              top: 86.22,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0x33CEF3F8),
                child: Center(
                    child: Text(
                        mandalart.specificGoals[4].specificGoals[7].content)),
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
                child: Center(
                    child: Text(
                        mandalart.specificGoals[5].specificGoals[0].content)),
              ),
            ),
            Positioned(
              left: 43.11,
              top: 0,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0x33CDB6FF),
                child: Center(
                    child: Text(
                        mandalart.specificGoals[5].specificGoals[1].content)),
              ),
            ),
            Positioned(
              left: 86.22,
              top: 0,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0x33CDB6FF),
                child: Center(
                    child: Text(
                        mandalart.specificGoals[5].specificGoals[2].content)),
              ),
            ),
            Positioned(
              left: 0,
              top: 43.11,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0x33CDB6FF),
                child: Center(
                    child: Text(
                        mandalart.specificGoals[5].specificGoals[3].content)),
              ),
            ),
            Positioned(
              left: 43.11,
              top: 43.11,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0xFFCDB6FF),
                child: Center(child: Text(mandalart.specificGoals[5].content)),
              ),
            ),
            Positioned(
              left: 86.22,
              top: 43.11,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0x33CDB6FF),
                child: Center(
                    child: Text(
                        mandalart.specificGoals[5].specificGoals[4].content)),
              ),
            ),
            Positioned(
              left: 0,
              top: 86.22,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0x33CDB6FF),
                child: Center(
                    child: Text(
                        mandalart.specificGoals[5].specificGoals[5].content)),
              ),
            ),
            Positioned(
              left: 43.11,
              top: 86.22,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0x33CDB6FF),
                child: Center(
                    child: Text(
                        mandalart.specificGoals[5].specificGoals[6].content)),
              ),
            ),
            Positioned(
              left: 86.22,
              top: 86.22,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0x33CDB6FF),
                child: Center(
                    child: Text(
                        mandalart.specificGoals[5].specificGoals[7].content)),
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
                child: Center(
                    child: Text(
                        mandalart.specificGoals[6].specificGoals[0].content)),
              ),
            ),
            Positioned(
              left: 43.11,
              top: 0,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0x33ACBFFF),
                child: Center(
                    child: Text(
                        mandalart.specificGoals[6].specificGoals[1].content)),
              ),
            ),
            Positioned(
              left: 86.22,
              top: 0,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0x33ACBFFF),
                child: Center(
                    child: Text(
                        mandalart.specificGoals[6].specificGoals[2].content)),
              ),
            ),
            Positioned(
              left: 0,
              top: 43.11,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0x33ACBFFF),
                child: Center(
                    child: Text(
                        mandalart.specificGoals[6].specificGoals[3].content)),
              ),
            ),
            Positioned(
              left: 43.11,
              top: 43.11,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0xFFACBFFF),
                child: Center(child: Text(mandalart.specificGoals[6].content)),
              ),
            ),
            Positioned(
              left: 86.22,
              top: 43.11,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0x33ACBFFF),
                child: Center(
                    child: Text(
                        mandalart.specificGoals[6].specificGoals[4].content)),
              ),
            ),
            Positioned(
              left: 0,
              top: 86.22,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0x33ACBFFF),
                child: Center(
                    child: Text(
                        mandalart.specificGoals[6].specificGoals[5].content)),
              ),
            ),
            Positioned(
              left: 43.11,
              top: 86.22,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0x33ACBFFF),
                child: Center(
                    child: Text(
                        mandalart.specificGoals[6].specificGoals[6].content)),
              ),
            ),
            Positioned(
              left: 86.22,
              top: 86.22,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0x33ACBFFF),
                child: Center(
                    child: Text(
                        mandalart.specificGoals[6].specificGoals[7].content)),
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
                child: Center(
                    child: Text(
                        mandalart.specificGoals[7].specificGoals[0].content)),
              ),
            ),
            Positioned(
              left: 43.11,
              top: 0,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0x33A7CAFE),
                child: Center(
                    child: Text(
                        mandalart.specificGoals[7].specificGoals[1].content)),
              ),
            ),
            Positioned(
              left: 86.22,
              top: 0,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0x33A7CAFE),
                child: Center(
                    child: Text(
                        mandalart.specificGoals[7].specificGoals[2].content)),
              ),
            ),
            Positioned(
              left: 0,
              top: 43.11,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0x33A7CAFE),
                child: Center(
                    child: Text(
                        mandalart.specificGoals[7].specificGoals[3].content)),
              ),
            ),
            Positioned(
              left: 43.11,
              top: 43.11,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0xFFA7CAFE),
                child: Center(child: Text(mandalart.specificGoals[7].content)),
              ),
            ),
            Positioned(
              left: 86.22,
              top: 43.11,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0x33A7CAFE),
                child: Center(
                    child: Text(
                        mandalart.specificGoals[7].specificGoals[4].content)),
              ),
            ),
            Positioned(
              left: 0,
              top: 86.22,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0x33A7CAFE),
                child: Center(
                    child: Text(
                        mandalart.specificGoals[7].specificGoals[5].content)),
              ),
            ),
            Positioned(
              left: 43.11,
              top: 86.22,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0x33A7CAFE),
                child: Center(
                    child: Text(
                        mandalart.specificGoals[7].specificGoals[6].content)),
              ),
            ),
            Positioned(
              left: 86.22,
              top: 86.22,
              child: Container(
                width: 40.78,
                height: 40.78,
                decoration: decorationForMandalart(0x33A7CAFE),
                child: Center(
                    child: Text(
                        mandalart.specificGoals[7].specificGoals[7].content)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
