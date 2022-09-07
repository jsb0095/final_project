import 'package:flutter/material.dart';
import 'package:basick/screens/main_screens.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '인풋창',
      theme: ThemeData(
          backgroundColor: Colors.yellow
      ),
      home: LoginSignupScreen(),
    );
  }
}


