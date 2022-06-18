import 'package:flutter/material.dart';
import 'package:mypetz/wiew/home_pages.dart';
import 'package:mypetz/wiew/myhome_page.dart';
import 'package:mypetz/wiew/home_teste.dart';
import 'package:mypetz/wiew/notification_page.dart';
import 'package:mypetz/wiew/virtua.dart';

class Routes {
  static Map<String, Widget Function(BuildContext)> list =
      <String, WidgetBuilder>{
    '/home': (_) => const HomeTeste(),
    '/virtual': (_) => const VirtuaScreen(),
    '/homepage': (_) => const HomePage(),
    '/myhomepage': (_) => const MyHomePage(
          title: 'My Home Page',
        ),
    '/notificacao': (_) => const NotificacaoPage(),
  };

  static String initial = '/homepage';
  static GlobalKey<NavigatorState>? navigatorKey = GlobalKey<NavigatorState>();
}
