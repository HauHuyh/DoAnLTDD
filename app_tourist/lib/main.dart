import 'home_screen.dart';
import 'package:flutter/material.dart';
import 'Login/login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "App Travel",
      home: Login(),
    );
  }
}
