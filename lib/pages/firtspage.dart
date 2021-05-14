import 'package:ejeplo1/pages/my_home_page.dart';
import 'package:ejeplo1/pages/secondPage.dart';
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => MyHomePage()));
                  },
                  child: Text('Galeria 1 >')),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => SecondPage()));
                  },
                  child: Text('Galeria 2 >')),
            ],
          ),
        ),
      ),
    );
  }
}
