import 'package:flutter/material.dart';
import 'package:mandalart/service/MandalartService.dart';

import '../DataModel/Mandalart.dart';
import '../DataModel/MandalartDto.dart';

class MandalartProvider2 extends ChangeNotifier {
  MandalartDto _mandalartDto = MandalartDto.init();
  final MandalartService _mdService = MandalartService();
  bool _isExpanded = false;

  MandalartProvider2();

  MandalartProvider2.forUpdate(MandalartDto mdDto) {
    _mandalartDto = mdDto;
  }

  bool get isExpanded => _isExpanded;
  Mandalart get mandalart => _mandalartDto.mandalart;
  MandalartDto get mandalartDto => _mandalartDto;

  void toggleExpanded() {
    print(_isExpanded);
    _isExpanded = !_isExpanded;
    notifyListeners();
  }

  void createMandalart(int level, String content) {
    _mandalartDto.mandalart = _mdService.createMandalart(level, content);
  }

  void addSpecGoalsLv2(String content) {
    var lv2Manda = _mdService.createMandalart(2, content);
    _mdService.addSpecGoals(mandalart, lv2Manda);
    notifyListeners();
  }

  void addSpecGoalsLv3(int index, String content) {
    var lv2Manda = _mdService.getTopMandalart(index, mandalart);

    var lv3Manda = _mdService.createMandalart(3, content);
    _mdService.addSpecGoals(lv2Manda, lv3Manda);
    notifyListeners();
  }

  String getLv1Content() {
    return mandalart.content;
  }

  List<Mandalart> getLv2Content() {
    return mandalart.specificGoals;
  }

  List<Mandalart> getLv3Contents(int index) {
    return mandalart.specificGoals[index].specificGoals;
  }

  void printMandalart() {
    _mdService.printMandalart(mandalart);
  }

  String? notInputValidation(String input) {
    if (input.isEmpty) {
      return '목표를 작성해 주세요!';
    }
    return null;
  }
}
