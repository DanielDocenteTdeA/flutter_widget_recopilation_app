import 'package:flutter/material.dart';

class MyRoundedButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Elevated Button")),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Agrega aquí la lógica que desees cuando se presione el botón
          },
          style: ElevatedButton.styleFrom(
            // backgroundColor: Colors.red,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50.0),
            ),
            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
          ),
          child: Text(
            'Botón Redondeado',
            style: TextStyle(
              fontSize: 18,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
