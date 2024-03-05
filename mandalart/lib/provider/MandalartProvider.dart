import 'package:flutter/material.dart';
import 'package:mandalart/service/MandalartService.dart';

import '../DataModel/Mandalart.dart';

class MandalartProvider extends ChangeNotifier {
  late Mandalart _mandalart = Mandalart.init();
  final MandalartService mdService = MandalartService();
  bool _isExpanded = false;

  MandalartProvider();
  MandalartProvider.forUpdate(Mandalart mandalart) {
    _mandalart = mandalart;
  }

  bool get isExpanded => _isExpanded;
  Mandalart get mandalart => _mandalart;

  void toggleExpanded() {
    print(_isExpanded);
    _isExpanded = !_isExpanded;
    notifyListeners();
  }

  Mandalart createMandalart(int level, String content) {
    if (level == 1) {
      _mandalart = mdService.createMandalart(level, content);
      notifyListeners();
      return _mandalart;
    } else {
      notifyListeners();
      return mdService.createMandalart(level, content);
    }
  }

  void addSpecGoalsLv2(String content) {
    var lv2Manda = mdService.createMandalart(2, content);
    mdService.addSpecGoals(mandalart, lv2Manda);
    notifyListeners();
  }

  void addSpecGoalsLv3(int index, String content) {
    var lv2Manda = mdService.getTopMandalart(index, mandalart);

    var lv3Manda = mdService.createMandalart(3, content);
    mdService.addSpecGoals(lv2Manda, lv3Manda);
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
    mdService.printMandalart(mandalart);
  }

  String? notInputValidation(String input) {
    if (input.isEmpty) {
      return '목표를 작성해 주세요!';
    }
    return null;
  }
}
