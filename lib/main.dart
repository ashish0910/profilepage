import 'package:flutter/material.dart';
import 'package:profile/profile.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Profile Page',
      theme: new ThemeData(
        primaryColor: new Color(0xFF5424eb),
      ),
      debugShowCheckedModeBanner: false,
      home: new ProfilePage(),
    );
  }
}

