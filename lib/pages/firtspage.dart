import 'package:ejeplo1/pages/my_home_page.dart';
import 'package:flutter/material.dart';

class Firtspage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('hola mundo'),
        backgroundColor: Colors.cyanAccent[800],
        leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () {
              print('adíos');
            }),
        elevation: 5,
      ),
      body: Container(
        color: Colors.cyan[100],
        padding: EdgeInsets.all(10),
        child: Center(
            child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => MyHomePage()));
                },
                child: Text('Iniciar'))),
      ),
    );
  }
}
