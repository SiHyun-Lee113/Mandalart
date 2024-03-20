import 'package:cloud_firestore/cloud_firestore.dart';

import '../DataModel/Mandalart.dart';
import '../DataModel/MandalartDto.dart';

class FirebaseService2 {
  static final FirebaseService2 _instance = FirebaseService2._internal();

  factory FirebaseService2() {
    return _instance;
  }

  FirebaseService2._internal();

  var db = FirebaseFirestore.instance;

  Future<List<MandalartDto>> getMdDtoList(String collectionName) async {
    List<MandalartDto> mdDtoList = [];

    QuerySnapshot querySnapshot = await db.collection(collectionName).get();
    querySnapshot.docs.forEach((doc) {
      Mandalart md = Mandalart.fromJson(doc.get('mandalart'));
      String id = doc.get('docId');
      String title = doc.get('mdTitle');
      int type = doc.get('mdType');
      mdDtoList.add(MandalartDto(id, type, title, md));
    });

    return mdDtoList;
  }

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
      Map<String, dynamic> mdMap, String collectionName) async {
    var collection = db.collection(collectionName);

    var id = mdMap['docId'];

    var set = collection.doc(id).set(mdMap);

    print(set);
  }

  Future<void> deleteDocument(String collectionName, String id) async {
    var collection = db.collection(collectionName);
    collection.doc(id).delete();
  }

  Stream<QuerySnapshot<Map<String, dynamic>>> getMdDtoStream(
      String collectionName) {
    return db.collection(collectionName).snapshots();
  }
}
