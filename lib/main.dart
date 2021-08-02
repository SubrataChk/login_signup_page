import 'package:flutter/material.dart';
import 'package:hw_login_page/screens/LoginPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Home Work",
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}
