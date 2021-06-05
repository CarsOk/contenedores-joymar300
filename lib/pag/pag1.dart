import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:flutter/material.dart';

class Pag1 extends StatefulWidget {
  const Pag1({Key key}) : super(key: key);

  @override
  _Pag1State createState() => _Pag1State();
}

class _Pag1State extends State<Pag1> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('users'),
        ),
        body: StreamBuilder(
            stream: FirebaseFirestore.instance.collection('users').snapshots(),
            builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
              if (!snapshot.hasData) {
                return Center(child: CircularProgressIndicator());
              }
              List<DocumentSnapshot> docs = snapshot.data.docs;
              return ListView.builder(
                  itemCount: docs.length,
                  itemBuilder: (BuildContext context, int index) {
                    Map<String, dynamic> data = docs[index].data();
                    return ListTile(
                      title: Text(data['name']),
                      subtitle: Text(data['job']),
                      leading: CircleAvatar(
                        child: Text(data['name'].substring(0, 1)),
                      ),
                    );
                  });
            }));
  }
}

class Usuarios {
  String name;
  String job;
  Map<String, dynamic> toJson() => {
        "name": name,
        'job': job,
      };
}
