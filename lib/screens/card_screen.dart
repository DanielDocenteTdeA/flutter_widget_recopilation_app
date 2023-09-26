import 'package:flutter/material.dart';

class MyCardWidget extends StatelessWidget {
  const MyCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: MyCard(),
      ),
    );
  }
}

class MyCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.album),
            title: Text('Musical de El Principito'),
            subtitle: Text('Musica de Nikol, letra de Ana'),
          ),
          ButtonBar(
            children: <Widget>[
              TextButton(
                onPressed: () {
                  // Acción del botón Comprar boletos
                },
                child: Text('Comprar boletos'),
              ),
              TextButton(
                onPressed: () {
                  // Acción del botón Escuchar
                },
                child: Text('Escuchar'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
