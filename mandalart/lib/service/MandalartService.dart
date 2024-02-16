import 'package:mandalart/DataModel/Mandalart.dart';

class MandalartService {

  Mandalart createMandalart(int level, String content) {
    return Mandalart(level, content);
  }

  Mandalart getTopMandalart(int index, Mandalart topLvMandalart) {
    var specificGoals = topLvMandalart.specificGoals;
    return specificGoals[index];
  }

  void addSpecGoals(Mandalart topLvMandalart, Mandalart bottomLvMandalart) {
    topLvMandalart.specificGoals.add(bottomLvMandalart);
  }

  void printMandalart(Mandalart mandalart) {
    print(mandalart);
  }
}

