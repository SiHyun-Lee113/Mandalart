import 'dart:core';

import 'package:mandalart/DataModel/Mandalart.dart';

class MandalartDto {
  String _docId = '';
  int _mdType = -1;
  Mandalart _mandalart = Mandalart.init();

  MandalartDto.init();
  MandalartDto(this._docId, this._mdType, this._mandalart);

  set docId(String value) => _docId = value;
  set mdType(int value) => _mdType = value;
  set mandalart(Mandalart value) => _mandalart = value;

  String get docId => _docId;
  int get mdType => _mdType;
  Mandalart get mandalart => _mandalart;

  Map<String, dynamic> toJson() {
    return {
      'docId': _docId,
      'mdType': _mdType,
      'mandalart': _mandalart.toJson()
    };
  }

  static MandalartDto fromJson(Map<String, dynamic> json) {
    int mdType = json['myType'];
    String docId = json['docId'];
    Mandalart mandalart = Mandalart.fromJson(json['mandalart']);

    return MandalartDto(docId, mdType, mandalart);
  }
}
