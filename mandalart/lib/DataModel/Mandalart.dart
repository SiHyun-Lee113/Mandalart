import 'dart:core';

class Mandalart {
  int _level = -1;
  String _content = '';
  List<Mandalart> _specificGoals = [];

  Mandalart(int level, String content) {
    _level = level;
    _content = content;
  }
  Mandalart.init();

  String get content => _content;
  List<Mandalart> get specificGoals => _specificGoals;

  set specificGoals(List<Mandalart> value) {
    _specificGoals = value;
  }

  @override
  String toString() {
    return '{"Mandalart" : {"level": "$_level", "content": "$_content", "specificGoals": ${_specificGoals.length}}}\n';
  }

  Map<String, dynamic> toJson() {
    List<Map<String, dynamic>> specificGoalsJson =
        _specificGoals.map((goal) => goal.toJson()).toList();

    return {
      'level': _level,
      'content': _content,
      'specificGoals': specificGoalsJson,
    };
  }

  static Mandalart fromJson(Map<String, dynamic> json) {
    int level = json['level'];
    String content = json['content'];

    List<Mandalart> specificGoals = [];
    if (json['specificGoals'] != null) {
      json['specificGoals'].forEach((goal) {
        specificGoals.add(Mandalart.fromJson(goal));
      });
    }

    Mandalart mandalart = Mandalart(level, content);
    mandalart.specificGoals = specificGoals;
    return mandalart;
  }
}
