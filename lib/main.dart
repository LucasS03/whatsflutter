import 'package:flutter/material.dart';
import 'package:whatsflutter/screen/home/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WhatsFlutter',
      home: Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}