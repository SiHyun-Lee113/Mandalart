import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mandalart/util/style/MandalartStyle.dart';

void main() {
  runApp(MandalartSquare());
}

class MandalartSquare extends StatefulWidget {
  const MandalartSquare({super.key});

  @override
  State<MandalartSquare> createState() => _MandalartSquareState();
}

class _MandalartSquareState extends State<MandalartSquare> {
  final ExpansionTileController controller = ExpansionTileController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('사각형 만다라트'),
        ),
        body: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
                child: ListView(
                  shrinkWrap: true,
                  padding: const EdgeInsets.all(8),
                  children: [
                    ExpansionTile(
                      title: TextField(
                        textAlign: TextAlign.center,
                        decoration: MandalartTextFieldStyle('최종 목표')
                      ),
                      children: [
                    ExpansionTile(
                      title: TextField(
                        textAlign: TextAlign.center,
                        decoration: MandalartTextFieldStyle('lv2 목표')
                      ),
                      children: [
                        GridView.count(
                          shrinkWrap: true,
                          crossAxisCount: 4, // 4 horizontal spaces
                          mainAxisSpacing: 8.0, // Vertical spacing between items
                          crossAxisSpacing: 8.0, // Horizontal spacing between items
                          padding: const EdgeInsets.all(8.0), // Padding around the grid
                          children: List.generate(8, (index) {
                            return Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey), // Add border for visual separation
                                borderRadius: BorderRadius.circular(8.0), // Add border radius for rounded corners
                              ),
                              child: Center(
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: 'Text Field ${index + 1}',
                                    contentPadding: const EdgeInsets.all(8.0), // Padding inside the text field
                                    border: InputBorder.none, // Remove border of the text field
                                  ),
                                ),
                              ),
                            );
                          }),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
