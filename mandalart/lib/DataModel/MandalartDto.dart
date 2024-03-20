import 'dart:core';

import 'package:mandalart/DataModel/Mandalart.dart';

class MandalartDto {
  String _docId = '';
  int _mdType = -1;
  String _mdTitle = '';
  Mandalart _mandalart = Mandalart.init();

  MandalartDto.init();
  MandalartDto(this._docId, this._mdType, this._mdTitle, this._mandalart);

  set docId(String value) => _docId = value;
  set mdType(int value) => _mdType = value;
  set mdTitle(String value) => _mdTitle = value;
  set mandalart(Mandalart value) => _mandalart = value;

  String get docId => _docId;
  int get mdType => _mdType;
  String get mdTitle => _mdTitle;
  Mandalart get mandalart => _mandalart;

  Map<String, dynamic> toJson() {
    return {
      'docId': _docId,
      'mdType': _mdType,
      'mdTitle': _mdTitle,
      'mandalart': _mandalart.toJson()
    };
  }

  static MandalartDto fromJson(Map<String, dynamic> json) {
    int mdType = json['myType'];
    String docId = json['docId'];
    String mdTitle = json['mdTitle'];
    Mandalart mandalart = Mandalart.fromJson(json['mandalart']);

    return MandalartDto(docId, mdType, mdTitle, mandalart);
  }
}
