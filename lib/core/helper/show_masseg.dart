import 'package:clipboard/clipboard.dart';
import 'package:flutter/material.dart';



final gotokey = GlobalKey<NavigatorState>();

Future<dynamic> showmassiage(String text){
  return
    FlutterClipboard.copy(text).then((value) {
      ScaffoldMessenger.of( gotokey.currentContext!).showSnackBar(SnackBar(
          elevation: 50,
          backgroundColor: Colors.green,
          duration: Duration(seconds: 3,),
          content: Text('Copy ya Gemy')));
    });
}