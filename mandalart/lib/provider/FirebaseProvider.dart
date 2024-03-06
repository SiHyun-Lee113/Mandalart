import 'package:flutter/material.dart';
import 'package:mandalart/DataModel/User.dart';
import 'package:mandalart/service/FirebaseService.dart';

import '../DataModel/Mandalart.dart';
import '../DataModel/MandalartDto.dart';

class FirebaseProvider extends ChangeNotifier {
  final MandalartUser _user = MandalartUser();
  final FirebaseService fbService = FirebaseService();

  Future<void> getUserDocsList() async {
    fbService.getDocsList(_user.email).then((value) => _user.idList = value);
    notifyListeners();
  }

  Future<Mandalart> getDocument(String docID) async {
    return await fbService.getDocument(docID, _user.email);
  }

  Future<int> saveDocument(Mandalart mandalart) async {
    var mdMap = mandalart.toJson();
    String docId = '';
    await fbService
        .saveDocument(mdMap, _user.email)
        .then((value) => docId = value);

    _user.idList.add(docId);

    return _user.idList.indexOf(docId);
  }

  void updateDocument(MandalartDto mdDto) {
    var mdMap = mdDto.mandalart.toJson();
    fbService.updateDocument(mdMap, _user.email, mdDto.docId);
  }

  void deleteDocument(MandalartDto mdDto) {
    String docId = mdDto.docId;
    fbService.deleteDocument(_user.email, docId);
  }
}
