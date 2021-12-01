import 'package:flutter/material.dart';
import 'package:messenger_app_flutter/BMIcalculator.dart';
import 'package:messenger_app_flutter/UsersScreen.dart';
import 'package:messenger_app_flutter/messengerScreen.dart';
import 'package:messenger_app_flutter/modules/logIn_Screen.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Users(),
    );
  }
}

void main() {
  runApp(MyApp());
}
