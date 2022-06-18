// ignore_for_file: await_only_futures, avoid_print

import 'package:firebase_core/firebase_core.dart';

import 'package:flutter/material.dart';
import 'package:mypetz/firebase_messaging/custom_firebase_messaging.dart';
import 'package:mypetz/remote_config/custom_remote_confg.dart';

import 'package:mypetz/wiew/home_teste.dart';
import 'package:mypetz/wiew/virtua.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();

  await CustomRemoteConfig().initialize();

  //Token Para manda mensagem
  await CustomFirebaseMessaging().getTokenFirebase();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/home',
      routes: {
        '/home': (_) => const HomeTeste(),
        '/virtual': (_) => const VirtuaScreen(),
      },
    );
  }
}
