import 'package:ejeplo1/pages/firtspage.dart';
import 'package:ejeplo1/pages/secondPage.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Galeria'),
          backgroundColor: Colors.deepPurpleAccent,
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
          color: Colors.deepPurple[100],
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
                    Image.network(
                      'https://3.bp.blogspot.com/-Xgoq1zM7nJM/WXt0EQJ1lVI/AAAAAAAAMro/z_aQmwvPjIcg2b0bqQabhCgo1Q52-ZJYQCLcBGAs/s1600/mononoke_t_shirt_by_idriu95-d78vaa1.jpg',
                      height: 300,
                      width: 200,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Image.network(
                      'https://pbs.twimg.com/media/E0tQO7fXIAM-tCT?format=jpg&name=large',
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
                    Image.network(
                      'https://pbs.twimg.com/media/Eybf5GCU8AI-pBW?format=jpg&name=medium',
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
                      'assets/img5.png',
                      height: 300,
                      width: 200,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Image.asset(
                      'img3.jpg',
                      height: 300,
                      width: 200,
                      fit: BoxFit.cover,
                    ),
                  ]),
              IconButton(
                  icon: Icon(Icons.arrow_forward_rounded),
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => SecondPage()));
                  }),
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
