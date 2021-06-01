import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:galeria/pag/pag1.dart';

class Pag2 extends StatelessWidget {
  const Pag2({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    return  Column(
            children: [
              TextField(onChanged: (valor) => data['name'] = valor),
              TextField(
                onChanged: (valor) {
                  data['job'] = valor;
                },
              ),
           
              ElevatedButton(
                  onPressed: () async {
                     Usuarios comentario = await data;
                    print('Guardado ');
                  },
                  child: Text('Guardar'))
                
            ],
                     ListTile(
                      title: Text(data['name']),
                      subtitle: Text(data['job']),
                      leading: CircleAvatar(
                        child: Text(data['name'].substring(0, 1)),
                      ),
                    );
                  });
            })
      
      
      Container(
          padding: EdgeInsets.only(left: 15.0, right: 15.0),
          child: Column(
            children: [
              TextField(onChanged: (valor) => comment.postId = valor),
              TextField(
                onChanged: (valor) {
                  comment.name = valor;
                },
              ),
              TextField(onChanged: (valor) => comment.email = valor),
              TextField(onChanged: (valor) => comment.body = valor),
              ElevatedButton(
                  onPressed: () async {
                    Comment comentario = await registrar(comment.toJson());
                    print('Guardado ');
                  },
                  child: Text('Guardar'))
                
            ],
          ),
        )
    );
  }
}
