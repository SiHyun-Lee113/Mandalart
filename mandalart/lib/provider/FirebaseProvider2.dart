import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:mandalart/DataModel/User.dart';

import '../DataModel/Mandalart.dart';
import '../DataModel/MandalartDto.dart';
import '../service/FirebaseService2.dart';

class FirebaseProvider2 extends ChangeNotifier {
  final MandalartUser _user = MandalartUser();
  final FirebaseService2 fbService = FirebaseService2();
  List<MandalartDto> _mdDtoList = [];

  List<MandalartDto> get mdDtoList => _mdDtoList;

  Stream<QuerySnapshot<Map<String, dynamic>>> getMdDtoListStream() {
    return fbService.getMdDtoStream(_user.collection);
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
    fbService.deleteDocument(_user.email, mdDto.docId);
  }
}
