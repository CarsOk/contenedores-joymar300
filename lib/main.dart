import 'package:ejeplo1/pages/my_home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'prueba',
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
