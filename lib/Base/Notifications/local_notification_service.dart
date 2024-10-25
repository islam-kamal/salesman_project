import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:water/Base/common/shared.dart';
import 'package:water/Dashboard/presentation/pages/dashboard_screen.dart';

class LocalNotificationService {
  static final FlutterLocalNotificationsPlugin _notificationsPlugin =
      FlutterLocalNotificationsPlugin();

  static void initialize(BuildContext context) {
    final InitializationSettings initializationSettings =
        InitializationSettings(
            android: AndroidInitializationSettings("@mipmap/ic_launcher"),
            iOS: IOSInitializationSettings(
              requestSoundPermission: false,
              requestBadgePermission: false,
              requestAlertPermission: false,
            ));

    _notificationsPlugin.initialize(initializationSettings,
        onSelectNotification: (String? route) async {
      if (route != null) {

          switch (route) {
            case "order_update":
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => DashboardScreen()));
              break;
          }
        }
    });
  }

  static void display(RemoteMessage message) async {
    try {
      final id = DateTime.now().millisecondsSinceEpoch ~/ 1000;

      final NotificationDetails notificationDetails = const NotificationDetails(
          android: AndroidNotificationDetails(
            "easyapproach",
            "easyapproach channel",
            channelDescription: 'easyapproach description',
            importance: Importance.max,
            priority: Priority.high,
            ongoing: true,

            styleInformation: BigTextStyleInformation(''),
          ),
          iOS: IOSNotificationDetails());

      await _notificationsPlugin.show(
        id,
        message.notification!.title,
        message.notification!.body,
        notificationDetails,
        payload: message.data["route"],
      );
    } on Exception catch (e) {
    }
  }

}
