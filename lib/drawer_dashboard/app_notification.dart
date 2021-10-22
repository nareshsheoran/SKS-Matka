import 'package:flutter/material.dart';
import 'package:kabir_app/Shared/constant.dart';

class AppNotification extends StatefulWidget {
  const AppNotification({Key? key}) : super(key: key);

  @override
  _AppNotificationState createState() => _AppNotificationState();
}

class _AppNotificationState extends State<AppNotification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Constant.appBarColor,
        title: Text('App Notification'),
      ),
    );
  }
}
