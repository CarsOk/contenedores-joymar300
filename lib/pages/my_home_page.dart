import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('prueba'),
          backgroundColor: Colors.deepPurpleAccent,
          leading: IconButton(
              icon: Icon(Icons.arrow_back_ios),
              onPressed: () {
                Navigator.of(context).pop();
              }),
          elevation: 5,
        ),
        body: Container(
          margin: EdgeInsets.symmetric(horizontal: 5),
          padding: EdgeInsets.symmetric(horizontal: 20),
          color: Colors.deepPurple[100],
          child: ListView(
            children: [
              Text('mejor ponte a aprender ingles.',
                  style: TextStyle(
                    fontSize: 30.0,
                    fontStyle: FontStyle.italic,
                  )),
              Row(children: <Widget>[
                Image(
                  image: NetworkImage(
                      'https://3.bp.blogspot.com/-Xgoq1zM7nJM/WXt0EQJ1lVI/AAAAAAAAMro/z_aQmwvPjIcg2b0bqQabhCgo1Q52-ZJYQCLcBGAs/s1600/mononoke_t_shirt_by_idriu95-d78vaa1.jpg'),
                  height: 200,
                  width: 150,
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  width: 10,
                ),
                Image(
                  image: NetworkImage(
                      'https://pbs.twimg.com/media/E0tQO7fXIAM-tCT?format=jpg&name=large'),
                  height: 200,
                  width: 150,
                  fit: BoxFit.cover,
                )
              ]),
              SizedBox(
                height: 20,
              ),
              Row(children: <Widget>[
                Image(
                  image: NetworkImage(
                      'https://pbs.twimg.com/media/EpH-cvgW8AMGcZE?format=jpg&name=medium'),
                  height: 200,
                  width: 150,
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  width: 10,
                ),
                Image(
                  image: NetworkImage(
                      'https://pbs.twimg.com/media/Eybf5GCU8AI-pBW?format=jpg&name=medium'),
                  height: 200,
                  width: 150,
                  fit: BoxFit.cover,
                )
              ]),
              SizedBox(
                height: 20,
              ),
              Row(children: <Widget>[
                Image(
                  image: NetworkImage(
                      'https://besthqwallpapers.com/Uploads/30-9-2020/142452/thumb2-cha-hae-in-4k-vice-guild-master-manga-solo-leveling.jpg'),
                  height: 200,
                  width: 150,
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  width: 10,
                ),
                Image(
                  image: NetworkImage(
                      'https://pbs.twimg.com/media/Eg1WGpOXYAMUPqT?format=jpg&name=large'),
                  height: 200,
                  width: 150,
                  fit: BoxFit.cover,
                )
              ]),
              IconButton(
                  icon: Icon(Icons.bookmark),
                  onPressed: () {
                    print('hola');
                  }),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image(
                    image: NetworkImage(
                        'https://images.vexels.com/media/users/3/223136/isolated/preview/984f500cf9de4519b02b354346eb72e0-facebook-icon-redes-sociales-by-vexels.png'),
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
