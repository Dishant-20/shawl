import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  //
  @override
  void initState() {
    super.initState();
    // NOTIFICATION
    func_get_notification_Details();
    //
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(10.0),
          color: Colors.amber[600],
          width: 48.0,
          height: 48.0,
        ),
      ),
    );
  }

  //
  func_get_notification_Details() {
    FirebaseMessaging.onMessage.listen(
      (RemoteMessage message) {
        // if (kDebugMode) {
        if (kDebugMode) {
          print("notification 2 ====> ${message.notification!.body}");
        }

        if (kDebugMode) {
          print('Handling a foreground message ${message.messageId}');
        }

        // push to audio
        if (message.notification!.body == 'Incoming audio call') {
        } else {}

        if (kDebugMode) {
          print('Notification Message: ${message.data}');
        }

        if (message.notification != null) {
          if (kDebugMode) {
            print(
                'Message also contained a notification: ${message.notification}');
          }
        }
      },
      onDone: () {
        print('am i done');
      },
    );
  }
}
