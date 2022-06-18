import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/widgets.dart';
import 'package:mypetz/firebase_messagin2/notification_service.dart';

class FirebaseMessagingService {
  final NotificationService _notificationService;

  FirebaseMessagingService(this._notificationService);

  Future<void> inicialize({VoidCallback? callback}) async {
    await FirebaseMessaging.instance
        .setForegroundNotificationPresentationOptions(
      badge: true,
      sound: true,
      alert: true,
    );
    getToken();
    _onMessege();
  }

  getToken() async {
    final token = await FirebaseMessaging.instance.getToken();
    debugPrint('########################################');
    debugPrint('$token');
    debugPrint('########################################');
  }

  _onMessege() {
    FirebaseMessaging.onMessage.listen((messeger) {
      RemoteNotification? notification = messeger.notification;
      AndroidNotification? android = messeger.notification?.android;
      if (notification != null && android != null) {
        _notificationService.showLocalNotification(
          CustomNotification(
            id: android.hashCode,
            title: notification.title!,
            body: notification.body!,
            //add Rota ou json no corpo ta notificação
            payload: messeger.data["route"] ?? '',
          ),
        );
      }
    });
  }
}
