import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:galeria/pag/pag1.dart';
import 'package:galeria/pag/pag2.dart';
import 'package:galeria/pag/pag3.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp().then((value) => runApp(MyApp()));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _pagActual = 0;
  List<Widget> _paginas = [Pag3(), Pag2(), Pag1()];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('hola'),
        ),
        body: _paginas[_pagActual],
        bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            setState(() {
              _pagActual = index;
            });
          },
          currentIndex: _pagActual,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_sharp), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.image), label: 'Image'),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle_rounded), label: 'Users')
          ],
        ),
      ),
    );
  }
}
