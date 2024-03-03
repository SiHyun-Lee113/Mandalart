import 'package:cloud_firestore/cloud_firestore.dart';

class FirebaseService {
  var db = FirebaseFirestore.instance;

  Future<String> saveDocument(
      Map<String, dynamic> mdMap, String collectionName) async {
    var collection = db.collection(collectionName);

    DocumentReference documentRef = await collection.add(mdMap);

    return documentRef.id;
  }

  Future<void> updateDocument(
      Map<String, dynamic> mdMap, String collectionName, String id) async {
    var collection = db.collection(collectionName);

    collection.doc(id).set(mdMap);
  }

  Future<void> deleteDocument(String collectionName, String id) async {
    var collection = db.collection(collectionName);
    collection.doc(id).delete();
  }
}
