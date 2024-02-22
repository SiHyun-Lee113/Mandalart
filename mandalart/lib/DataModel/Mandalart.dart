class Mandalart {
  final int _level;
  final String _content;
  List<Mandalart> _specificGoals = [];

  Mandalart(this._level, this._content);

  List<Mandalart> get specificGoals => _specificGoals!;

  set specificGoals(List<Mandalart> value) {
    _specificGoals = value;
  }

  @override
  String toString() {
    return '{"Mandalart" : {"level": "$_level", "content": "$_content", "specificGoals": ${_specificGoals.length}}}\n';
  }

  //Todo
  // Map<String, dynamic> toJSon() {
  //   // json_seriaslizable 사용
  //   return ;
  // }
}