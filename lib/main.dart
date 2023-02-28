import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
// import 'package:shared_preferences/shared_preferences.dart';
import 'package:shawl/classes/login/login.dart';
import 'firebase_options.dart';

RemoteMessage? initialMessage;
FirebaseMessaging _firebaseMessaging = FirebaseMessaging.instance;

void main() async {
  //
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  // show notification alert ( banner )
  NotificationSettings settings = await _firebaseMessaging.requestPermission(
    alert: true,
    announcement: false,
    badge: true,
    carPlay: false,
    criticalAlert: false,
    provisional: false,
    sound: true,
  );

  if (kDebugMode) {
    print('User granted permission =====> ${settings.authorizationStatus}');
  }
  //
  //
  final token = await _firebaseMessaging.getToken();

  //
  //
  if (kDebugMode) {
    print('=============> HERE IS MY DEVICE TOKEN <=============');
    print('======================================================');
    print(token);
    print('======================================================');
    print('======================================================');
  }
  // save token locally
  // SharedPreferences preferences = await SharedPreferences.getInstance();
  // preferences.setString('deviceToken', token.toString());
  //

  // background access
  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);

  // foreground access
  await FirebaseMessaging.instance.setForegroundNotificationPresentationOptions(
    alert: true,
    badge: true,
    sound: true,
  );

  /*FirebaseMessaging.onMessage.listen((RemoteMessage message) {
    if (kDebugMode) {
      print('=====> GOT NOTIFICATION IN FOREGROUND <=====');
    }
    if (kDebugMode) {
      print('Message data: ${message.data}');
    }
    if (message.notification != null) {
      if (kDebugMode) {
        print('Message also contained a notification: ${message.notification}');
      }
      // setState(() {
      //   notifTitle = message.notification!.title;
      //   notifBody = message.notification!.body;
      // });
    }
  });*/

  //
  //

  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    ),
  );
}

void showDialog(BuildContext context, Map<String, dynamic> message) {
  // data
  if (kDebugMode) {
    print('show');
  }
}

Future _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  if (kDebugMode) {
    print("Handling a background message: ${message.messageId}");
    print("Handling a background message: ${message.data}");
  }
}
