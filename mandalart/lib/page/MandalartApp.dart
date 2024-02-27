import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:mandalart/page/MandalartInputPage.dart';
import 'package:mandalart/page/MandalartListPage.dart';
import 'package:mandalart/page/MandalartShowPage.dart';
import 'package:mandalart/page/MandalartTypeSelectionPage.dart';
import 'package:provider/provider.dart';

import '../firebase_options.dart';
import '../provider/LoginProvider.dart';
import '../provider/MandalartProvider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider<MandalartProvider>.value(
          value: MandalartProvider()),
      ChangeNotifierProvider<LoginViewModel>.value(
        value: LoginViewModel(),)
    ],
    child: MaterialApp(
      title: '만다라트 계획표 애플리케이션',
      initialRoute: '/mdList',
      routes: {
        '/mdList': (context) => MandalartListPage(),
        '/mdShow': (context) => MandalartShowPage(),
        '/mdTypeSelect': (context) => MandalartTypeSelectionPage(),
        '/mdInputPage': (context) {
          final args = ModalRoute.of(context)?.settings.arguments as int?;
          return MandalartInputPage(viewCount: args ?? -1);
        },
      },
    )

  ));
}

class MandalartApp extends StatelessWidget {
  const MandalartApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
