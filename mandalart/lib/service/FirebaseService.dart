import 'package:cloud_firestore/cloud_firestore.dart';

import '../DataModel/Mandalart.dart';

class FirebaseService {
  static final FirebaseService _instance = FirebaseService._internal();

  factory FirebaseService() {
    return _instance;
  }

  FirebaseService._internal();

  var db = FirebaseFirestore.instance;

  Future<Mandalart> getDocument(String docID, String collectionName) async {
    late Mandalart mandalart;
    await FirebaseFirestore.instance
        .collection(collectionName)
        .doc(docID)
        .get()
        .then((DocumentSnapshot snapshot) {
      if (snapshot.exists) {
        mandalart = Mandalart.fromJson(snapshot.data() as Map<String, dynamic>);
      }
    });

    return mandalart;
  }

  Future<List<String>> getDocsList(String collectionName) async {
    late List<String> docIds;

    try {
      QuerySnapshot querySnapshot =
          await FirebaseFirestore.instance.collection(collectionName).get();
      docIds = querySnapshot.docs.map((doc) => doc.id).toList();
    } catch (e) {
      print('Error getting document IDs: $e');
    }

    return docIds;
  }

  Future<String> saveDocument(
      Map<String, dynamic> mdMap, String collectionName) async {
    var collection = db.collection(collectionName);

    DocumentReference documentRef = await collection.add(mdMap);

    return documentRef.id;
  }

  Future<void> updateDocument(
      Map<String, dynamic> mdMap, String collectionName, String id) async {
    var collection = db.collection(collectionName);

    var set = collection.doc(id).set(mdMap);

    print(set);
  }

  Future<void> deleteDocument(String collectionName, String id) async {
    var collection = db.collection(collectionName);
    collection.doc(id).delete();
  }
}
