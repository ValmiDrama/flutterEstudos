// ignore_for_file: await_only_futures, avoid_print

import 'package:firebase_core/firebase_core.dart';

import 'package:flutter/material.dart';
import 'package:mypetz/firebase_messagin2/firebase_messaging.dart';
import 'package:mypetz/firebase_messagin2/notification_service.dart';
import 'package:mypetz/firebase_messaging/custom_firebase_messaging.dart';
import 'package:mypetz/remote_config/custom_remote_confg.dart';
import 'package:mypetz/routes.dart';
import 'package:provider/provider.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();

  await CustomRemoteConfig().initialize();

  //Token Para manda mensagem
  await CustomFirebaseMessaging().getTokenFirebase();

  runApp(
    MultiProvider(
      providers: [
        Provider<NotificationService>(
          create: (context) => NotificationService(),
        ),
        Provider<FirebaseMessagingService>(
          create: (context) =>
              FirebaseMessagingService(context.read<NotificationService>()),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    initilizeFirebaseMessaging();
    checkNotifications();
  }

  initilizeFirebaseMessaging() async {
    await Provider.of<FirebaseMessagingService>(context, listen: false)
        .inicialize();
  }

  checkNotifications() async {
    await Provider.of<NotificationService>(context, listen: false)
        .checkForNotifications();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // initialRoute: '/home',
      // routes: {
      //   '/home': (_) => const HomeTeste(),
      //   '/virtual': (_) => const VirtuaScreen(),
      //   '/homepage': (_) => const MyHomePage(
      //         title: 'My Home Page',
      //       ),
      // }
      routes: Routes.list,
      initialRoute: Routes.initial,
      navigatorKey: Routes.navigatorKey,
    );
  }
}
