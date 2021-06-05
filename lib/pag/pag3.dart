import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:galeria/modelos/clases.dart';

class Pag3 extends StatefulWidget {
  const Pag3({Key key}) : super(key: key);

  @override
  _Pag3State createState() => _Pag3State();
}

class _Pag3State extends State<Pag3> {
  List<Post> postList = [];
  @override
  void initState() {
    super.initState();
    DatabaseReference postRef =
        FirebaseDatabase.instance.reference().child('posts');
    postRef.once().then((DataSnapshot snap) {
      var keys = snap.value.keys;
      var data = snap.value;
      postList.clear();

      for (var individualKey in keys) {
        Post post = new Post(data[individualKey]['image'],
            data[individualKey]['date'], data[individualKey]['time']);
        postList.add(post);
      }
      setState(() {
        print('Length: $postList.length');
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Galeria'),
        ),
        body: Container(
          child: postList.length == 0
              ? Text('no blog aviable')
              : ListView.builder(
                  itemCount: postList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return postUi(
                      postList[index].image,
                      postList[index].date,
                      postList[index].time,
                    );
                  },
                ),
        ));
  }

  Widget postUi(String image, String date, String time) {
    return Card(
      elevation: 10.0,
      margin: EdgeInsets.all(14.0),
      child: Container(
        padding: EdgeInsets.all(14.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(date,
                    style: Theme.of(context).textTheme.subtitle2,
                    textAlign: TextAlign.center),
                Text(time,
                    style: Theme.of(context).textTheme.subtitle2,
                    textAlign: TextAlign.center),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Image.network(
              image,
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 10,
            )
          ],
        ),
      ),
    );
  }
}
