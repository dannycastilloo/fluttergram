import 'package:flutter/material.dart';
import 'package:flutter_full_course/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Urbanist'),
      home: LoginPage(),
    );
  }
}
