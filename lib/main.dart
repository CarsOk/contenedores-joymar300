import 'package:ejeplo1/pages/firtspage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Firtspage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
