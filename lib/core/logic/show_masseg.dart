import 'package:clipboard/clipboard.dart';
import 'package:flutter/material.dart';



final messengerKey = GlobalKey<ScaffoldMessengerState>();

Future<void> showmassiage(String text) async {
  FlutterClipboard.copy(text);

  messengerKey.currentState?.showSnackBar(
    SnackBar(
      content: Text(
        text,
        style: TextStyle(fontFamily: 'Tajawal', color: Colors.red),
      ),
      backgroundColor:Theme.of(messengerKey.currentContext!).primaryColor, // لون خلفية الـ SnackBar
      duration: Duration(seconds: 3),
      behavior: SnackBarBehavior.floating,
      margin: EdgeInsets.all(16),
      elevation: 0,
    ),
  );
}