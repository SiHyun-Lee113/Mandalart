import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:mandalart/DataModel/User.dart';
import 'package:mandalart/service/FirebaseService.dart';

import '../DataModel/Mandalart.dart';

class FirebaseProvider extends ChangeNotifier {
  final MandalartUser _user = MandalartUser();
  final FirebaseService fbService = FirebaseService();

  Future<void> getUserDocsList() async {
    try {
      QuerySnapshot querySnapshot =
          await FirebaseFirestore.instance.collection(_user.email).get();
      List<String> docIds = querySnapshot.docs.map((doc) => doc.id).toList();
      _user.idList = docIds;

      print('All Document IDs: $docIds');
    } catch (e) {
      print('Error getting document IDs: $e');
    }
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

  void updateDocument(Mandalart mandalart, int index) {
    var mdMap = mandalart.toJson();
    fbService.updateDocument(mdMap, _user.email, _user.idList[index]);
  }

  void deleteDocument(int index) {
    String docId = _user.idList[index];
    fbService.deleteDocument(_user.email, docId);
  }
}
