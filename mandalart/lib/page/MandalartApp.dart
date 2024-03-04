import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:mandalart/page/MandalartInputPage.dart';
import 'package:mandalart/page/MandalartListPage.dart';
import 'package:mandalart/page/MandalartShowPage.dart';
import 'package:mandalart/page/MandalartTypeSelectionPage.dart';
import 'package:mandalart/provider/FirebaseProvider.dart';
import 'package:provider/provider.dart';

import '../firebase_options.dart';
import '../provider/MandalartProvider.dart';
import '../provider/UserProvider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(
    MultiProvider(
        providers: [
          ChangeNotifierProvider<MandalartProvider>.value(
              value: MandalartProvider()),
          ChangeNotifierProvider<UserProvider>.value(
            value: UserProvider(),
          ),
          ChangeNotifierProvider<FirebaseProvider>.value(
            value: FirebaseProvider(),
          )
        ],
        child: FutureBuilder(
          future: _initializeApp(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const CircularProgressIndicator();
            } else {
              return MaterialApp(
                title: '만다라트 계획표 애플리케이션',
                initialRoute: '/mdList',
                routes: {
                  '/mdList': (context) => MandalartListPage(),
                  '/mdShow': (context) {
                    var arg =
                        ModalRoute.of(context)?.settings.arguments as int?;
                    return MandalartShowPage(docIndex: arg ?? -1);
                  },
                  '/mdTypeSelect': (context) => MandalartTypeSelectionPage(),
                  '/mdInputPage': (context) {
                    var arg =
                        ModalRoute.of(context)?.settings.arguments as int?;
                    return MandalartInputPage(viewCount: arg ?? -1);
                  },
                },
              );
            }
          },
        )),
  );
}

Future<void> _initializeApp() async {
  await UserProvider().getUserInfo();
  await FirebaseProvider().getUserDocsList();
}
