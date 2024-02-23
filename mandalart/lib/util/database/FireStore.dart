import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import '../../firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(FireStoreTest());
}

class FireStoreTest extends StatefulWidget {
  const FireStoreTest({super.key});

  @override
  State<FireStoreTest> createState() => _FireStoreTestState();
}

class _FireStoreTestState extends State<FireStoreTest> {
  var db = FirebaseFirestore.instance;
  String dbResult = "Firestore result";

  void create() {
    final city = <String, String>{
      "name": "Los Angeles",
      "state": "CA",
      "country": "USA"
    };

    setState(() {
      db.collection("cities").doc("LA").set(city).then((value) {
        setState(() {
          dbResult = 'success';
        });
      }).onError((e, _) {
        dbResult = 'error';
        print(e);
      });
    });
  }

  void delete() {
    db.collection("cities").doc("test").delete().then((doc) {
      setState(() {
        dbResult = 'Document deleted';
      });
    }, onError: (e) {
      setState(() {
        dbResult = e;
      });
    });
  }

  void update() {
    final city = <String, String>{
      "name": "Los Angeles Update",
      "state": "CA",
      "country": "USA"
    };

    setState(() {
      db.collection("cities").doc("LA").set(city).then((value) {
        setState(() {
          dbResult = 'success';
        });
      }).onError((e, _) {
        dbResult = 'error';
        print(e);
      });
    });
  }

  void select() {
    db.collection("cities").get().then(
      (querySnapshot) {
        print("Successfully completed");
        for (var docSnapshot in querySnapshot.docs) {
          print('${docSnapshot.id} => ${docSnapshot.data()}');
          setState(() {
            dbResult = docSnapshot.data()['country'];
          });
        }
      },
      onError: (e) => print("Error completing: $e"),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Firestore Test App'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(dbResult),
              ElevatedButton(onPressed: create, child: const Text('create')),
              ElevatedButton(onPressed: delete, child: const Text('delete')),
              ElevatedButton(onPressed: update, child: const Text('update')),
              ElevatedButton(onPressed: select, child: const Text('select')),
            ],
          ),
        ),
      ),
    );
  }
}
