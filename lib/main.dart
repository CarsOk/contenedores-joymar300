import 'package:flutter/material.dart';

void main() {
  runApp(Prueba());
}

class Prueba extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'prueba',
      home: Scaffold(
          appBar: AppBar(
            title: Text('prueba'),
          ),
          body: Center(
            child: Column(
              children: [
                Text('muy buenas a todos, guapisimos',
                    style: TextStyle(
                      fontSize: 30.0,
                      fontStyle: FontStyle.italic,
                    )),
                const Image(
                  image: NetworkImage(
                      'https://3.bp.blogspot.com/-Xgoq1zM7nJM/WXt0EQJ1lVI/AAAAAAAAMro/z_aQmwvPjIcg2b0bqQabhCgo1Q52-ZJYQCLcBGAs/s1600/mononoke_t_shirt_by_idriu95-d78vaa1.jpg'),
                  height: 400,
                  width: 200,
                ),
                IconButton(
                    icon: Icon(Icons.bookmark),
                    onPressed: () {
                      print('hola');
                    }),
                const Image(
                  image: NetworkImage(
                      'https://images.vexels.com/media/users/3/223136/isolated/preview/984f500cf9de4519b02b354346eb72e0-facebook-icon-redes-sociales-by-vexels.png'),
                  height: 50,
                  width: 50,
                  alignment: Alignment.bottomCenter,
                )
              ],
            ),
          )),
    );
  }
}
