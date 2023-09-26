import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
          child: ListView(children: <Widget>[
        DrawerHeader(
            decoration: BoxDecoration(color: Colors.blue),
            child: Text("menu",
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                ))),
        ListTile(
          leading: Icon(Icons.settings),
          title: Text("Configuracion"),
        ),
        ListTile(
          leading: Icon(Icons.home),
          title: Text("Home"),
        )
      ])),
      appBar: AppBar(
        title: Text('Drawer '),
      ),
      body: Center(
        child: Text('Contenido de la página principal'),
      ),
    );
  }
}
