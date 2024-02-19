import 'package:flutter/material.dart';
import 'package:mandalart/service/MandalartService.dart';
import 'package:provider/provider.dart';

import '../DataModel/Mandalart.dart';

class MandalartProvider extends ChangeNotifier {
  late Mandalart mandalart;

  Mandalart createMandalart(int level, String content) {
    if (level == 1) {
      mandalart = MandalartService().createMandalart(level, content);
      notifyListeners();
      return mandalart;
    } else {
      notifyListeners();
      return MandalartService().createMandalart(level, content);
    }
  }

  void addSpecGoalsLv2(String content) {
    var lv2Manda = MandalartService().createMandalart(2, content);
    MandalartService().addSpecGoals(mandalart, lv2Manda);
    notifyListeners();
  }

  void addSpecGoalsLv3(int index, String content) {
    var lv2Manda = MandalartService().getTopMandalart(index, mandalart);

    var lv3Manda = MandalartService().createMandalart(3, content);
    MandalartService().addSpecGoals(lv2Manda, lv3Manda);
    notifyListeners();
  }
  
  void printMandalart() {
    MandalartService().printMandalart(mandalart);
  }

  String? notInputValidation(String input) {
    if (input.isEmpty) {
      return '목표를 작성해 주세요!';
    }
    return null;
  }
}