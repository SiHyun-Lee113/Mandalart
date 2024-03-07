import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:mandalart/DataModel/MandalartDto.dart';
import 'package:mandalart/firebase_options.dart';
import 'package:mandalart/page/ver2/MandalartInputPage2.dart';
import 'package:mandalart/page/ver2/MandalartListPage2.dart';
import 'package:mandalart/page/ver2/MandalartShowPage2.dart';
import 'package:mandalart/page/ver2/MandalartUpdatePage2.dart';
import 'package:mandalart/provider/FirebaseProvider2.dart';
import 'package:mandalart/provider/MandalartProvider2.dart';
import 'package:mandalart/provider/UserProvider.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<MandalartProvider2>.value(
            value: MandalartProvider2()),
        ChangeNotifierProvider<UserProvider>.value(
          value: UserProvider(),
        ),
        ChangeNotifierProvider<FirebaseProvider2>.value(
          value: FirebaseProvider2(),
        ),
        ChangeNotifierProvider<MandalartProvider2>.value(
          value: MandalartProvider2(),
        ),
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
                '/mdList': (context) => MandalartListPage2(),
                '/mdShow': (context) {
                  var arg = ModalRoute.of(context)?.settings.arguments
                      as MandalartDto?;
                  return MandalartShowPage2(mdDto: arg ?? MandalartDto.init());
                },
                '/mdInputPage': (context) {
                  var arg = ModalRoute.of(context)?.settings.arguments as int?;
                  return MandalartInputPage2(viewCount: arg ?? -1);
                },
                '/mdUpdate': (context) {
                  var arg = ModalRoute.of(context)?.settings.arguments
                      as MandalartDto?;
                  return MandalartUpdatePage2(mdDto: arg!);
                }
              },
            );
          }
        },
      ),
    ),
  );
}

Future<void> _initializeApp() async {
  await UserProvider().getUserInfo();
  await FirebaseProvider2().getUserDocsList();
  await FirebaseProvider2().getMdDtoList();
}
