import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ineed/pages/Login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return new MaterialApp(
      routes: <String,WidgetBuilder>{
        "/LoginScreen": (BuildContext context) => Login(),
      },
      home: Login(),
      debugShowCheckedModeBanner: false,
    );
  }
}
