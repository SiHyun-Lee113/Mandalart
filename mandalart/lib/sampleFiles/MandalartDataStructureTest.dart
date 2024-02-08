void main() {
  var lv1Goal = Mandalart(1, 'Level 1 goal');
  List<Mandalart> specificGoals = [];

  for (int i = 0; i < 8; i++) {
    var lv2Goal = Mandalart(2, 'Level 2 goal : $i');
    List<Mandalart> lv2specificGoals = [];
    for (int j = 0; j < 8; j++) {
      var lv3Goal = Mandalart(3, 'Level 3 goal : $j');
      lv2specificGoals.add(lv3Goal);
    }
    lv2Goal.specificGoals = lv2specificGoals;
    specificGoals.add(lv2Goal);
  }
  lv1Goal.specificGoals = specificGoals;

  print(lv1Goal);
}

class Mandalart {
  final int _level;
  final String _content;
  List<Mandalart>? _specificGoals;

  Mandalart(this._level, this._content);

  List<Mandalart> get specificGoals => _specificGoals!;

  set specificGoals(List<Mandalart> value) {
    _specificGoals = value;
  }

  @override
  String toString() {
    return '{"Mandalart" : {"level": "$_level", "content": "$_content", "specificGoals": $_specificGoals}}\n';
  }
}