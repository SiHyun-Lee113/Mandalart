import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mandalart/DataModel/User.dart';

import '../DataModel/Mandalart.dart';
import '../DataModel/MandalartDto.dart';
import '../service/FirebaseService2.dart';

class FirebaseProvider2 extends ChangeNotifier {
  final MandalartUser _user = MandalartUser();
  final FirebaseService2 fbService = FirebaseService2();
  final List<MandalartDto> _sampleList = [];
  List<MandalartDto> _mdDtoList = [];

  List<MandalartDto> get mdDtoList => _mdDtoList;

  List<MandalartDto> get sampleList => _sampleList;

  Stream<QuerySnapshot<Map<String, dynamic>>> getMdDtoListStream() {
    return fbService.getMdDtoStream(_user.collection);
  }

  Future<List<MandalartDto>> getSampleList() async {
    String hexagon = await rootBundle
        .loadString('lib/sampleFiles/OhtaniMandalartHexagon.json');
    String triangle = await rootBundle
        .loadString('lib/sampleFiles/OhtaniMandalartTriangle.json');
    String square = await rootBundle
        .loadString('lib/sampleFiles/OhtaniMandalartSquare.json');

    Map<String, dynamic> hexMd = jsonDecode(hexagon);
    Map<String, dynamic> triMd = jsonDecode(triangle);
    Map<String, dynamic> squMd = jsonDecode(square);

    sampleList.add(MandalartDto('', 8, Mandalart.fromJson(squMd)));
    sampleList.add(MandalartDto('', 6, Mandalart.fromJson(triMd)));
    sampleList.add(MandalartDto('', 3, Mandalart.fromJson(hexMd)));

    print('FirebaseProvider2.getSampleList');
    print(sampleList.toString());

    return sampleList;
  }

  Future<void> getMdDtoList() async {
    _mdDtoList = await fbService.getMdDtoList(_user.collection);
    notifyListeners();
  }

  Future<void> getUserDocsList() async {
    fbService.getDocsList(_user.email).then((value) => _user.idList = value);
  }

  Future<Mandalart> getDocument(String docID) async {
    return await fbService.getDocument(docID, _user.email);
  }

  Future<String> saveDocument(MandalartDto mdDto) async {
    String docId = await fbService.saveDocument(mdDto.toJson(), _user.email);

    mdDto.docId = docId;

    print('FirebaseProvider2.saveDocument $docId');

    await fbService.updateDocument(mdDto.toJson(), _user.collection);

    _user.idList.add(docId);

    return docId;
  }

  void updateDocument(MandalartDto mdDto) {
    fbService.updateDocument(mdDto.toJson(), _user.collection);
  }

  void deleteDocument(MandalartDto mdDto) {
    fbService.deleteDocument(_user.collection, mdDto.docId);
  }
}
