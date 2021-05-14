import 'package:ejeplo1/pages/my_home_page.dart';
import 'package:flutter/material.dart';

import 'firtspage.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Galeria 2'),
          backgroundColor: Colors.red[400],
          leading: IconButton(
              icon: Icon(Icons.arrow_back_ios),
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Firtspage()));
              }),
          elevation: 5,
        ),
        body: Container(
          margin: EdgeInsets.symmetric(horizontal: 5),
          padding: EdgeInsets.symmetric(horizontal: 20),
          color: Colors.deepOrange[100],
          child: ListView(
            children: [
              Center(
                child: Text('mejor ponte a aprender ingles.',
                    style: TextStyle(
                      fontSize: 30.0,
                      fontStyle: FontStyle.italic,
                    )),
              ),
              SizedBox(height: 10),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset(
                      'assets/img2.jpg',
                      height: 300,
                      width: 200,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Image.asset(
                      'img1.jpg',
                      height: 300,
                      width: 200,
                      fit: BoxFit.cover,
                    ),
                  ]),
              SizedBox(
                height: 20,
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.network(
                      'https://pbs.twimg.com/media/EpH-cvgW8AMGcZE?format=jpg&name=medium',
                      height: 300,
                      width: 200,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Image.asset(
                      'assets/img4.jpg',
                      height: 300,
                      width: 200,
                      fit: BoxFit.cover,
                    ),
                  ]),
              SizedBox(
                height: 20,
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset(
                      'assets/img6.jpg',
                      height: 300,
                      width: 200,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Image.asset(
                      'img5.jpg',
                      height: 300,
                      width: 200,
                      fit: BoxFit.cover,
                    ),
                  ]),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                      icon: Icon(Icons.arrow_back),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => MyHomePage()));
                      }),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.network(
                    'https://images.vexels.com/media/users/3/223136/isolated/preview/984f500cf9de4519b02b354346eb72e0-facebook-icon-redes-sociales-by-vexels.png',
                    height: 50,
                    width: 50,
                    alignment: Alignment.bottomCenter,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Image.network(
                    'https://cdn.icon-icons.com/icons2/895/PNG/512/Twitter_icon_icon-icons.com_69154.png',
                    height: 50,
                    width: 50,
                  )
                ],
              )
            ],
          ),
        ));
  }
}
