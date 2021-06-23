import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:galeria/main.dart';
import 'package:galeria/pag/pag3.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';

class Pag2 extends StatefulWidget {
  const Pag2({Key key}) : super(key: key);

  @override
  _Pag2State createState() => _Pag2State();
}

class _Pag2State extends State<Pag2> {
  File _image;
  final picker = ImagePicker();
  String url;
  Future getImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.gallery);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('subir imagen'),
      ),
      body: Center(
        child: _image == null ? Text('selecciona una imagen') : enableUpload(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: getImage,
        tooltip: 'add image',
        child: Icon(Icons.add_photo_alternate_outlined),
      ),
    );
  }

  final formKey = GlobalKey<FormState>();
  //globalkey:  permite acceder información de otro widget en una parte diferente de otro arbol de widget o  un widget pueda cambiar a los padres de un widget
  Widget enableUpload() {
    return Container(
      child: Form(
        key: formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.file(
              _image,
              height: 300,
              width: 600,
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(onPressed: subirImagen, child: Text('subir'))
          ],
        ),
      ),
    );
  }

  bool validateAndsaved() {
    final form = formKey.currentState;
    if (form.validate()) {
      return true;
    } else {
      return false;
    }
  }

  void subirImagen() async {
    //subir imagen a firebase storege
    if (validateAndsaved()) {
      final Reference postImage = FirebaseStorage.instance.ref().child('posts');
      var timekey = DateTime.now();
      final UploadTask uploadTask =
          postImage.child(timekey.toString() + ".jpg").putFile(_image);
      var imageUrl = await (await uploadTask).ref.getDownloadURL();
      url = imageUrl.toString();
      print('imageUrl:' + url);
      //guardar el post a firebase database: database realtime
      saveData(url);

      //regresar a home

      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => MyApp()));
    }
  }

  void saveData(String url) {
    var dbtimeKey = DateTime.now();
    var formatDate = DateFormat('MMM d,yyyy');
    var formatTime = DateFormat('EEEE, hh:mm aaa');

    String date = formatDate.format(dbtimeKey);
    String time = formatTime.format(dbtimeKey);
    DatabaseReference ref = FirebaseDatabase.instance.reference();
    var data = {'image': url, 'date': date, 'time': time};
    ref.child('posts').push().set(data);
  }
}
