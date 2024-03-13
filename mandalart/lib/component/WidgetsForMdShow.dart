import 'package:flutter/material.dart';
import 'package:mandalart/DataModel/MandalartDto.dart';
import 'package:mandalart/component/Mandalart/SquareMdWidget.dart';

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
        return SquareMdWidget(mandalart: mdDto.mandalart);
    }

    return const Placeholder();
  }
}
