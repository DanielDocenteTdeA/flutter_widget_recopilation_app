import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const appTitle = 'Form de Validación ';

    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(appTitle),
        ),
        body: const MyCustomForm(),
      ),
    );
  }
}

// Se crea un widget de ´form' .
class MyCustomForm extends StatefulWidget {
  const MyCustomForm({super.key});

  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

// Crea una clase de estado correspondiente.
/* Esta clase contiene datos relacionados con el formulario
 * como la ejecución de operaciones.
*/
class MyCustomFormState extends State<MyCustomForm> {
// Cree una clave global que identifique de forma única el widget de formulario
// y permita la validación del formulario.
// // Nota: Esta es una GlobalKey<FormState>, // no una GlobalKey<MyCustoms FormState>.
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // Se crea un widget de formulario utilizando la _formKey creada anteriormente.
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextFormField(
            // El validador recibe el texto que el usuario ha ingresado.
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Ingresa algún texto amigo';
              }
              return null;
            },
          ),
          TextFormField(
            // El validador recibe el texto que el usuario ha ingresado.
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Ingresa algún texto amigo';
              }
              return null;
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: ElevatedButton(
              onPressed: () {
                // 'validate' devuelve verdadero si el formulario es válido o falso en caso contrario.
                if (_formKey.currentState!.validate()) {
                  // Si el formulario es válido, mostrar un snackbar. En el mundo real,
                  // a menudo llamarías a un servidor o guardarías la información en una base de datos.
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                        content: Text('Dato ingresado exitosamente')),
                  );
                }
              },
              child: const Text('Enviar'),
            ),
          ),
        ],
      ),
    );
  }
}
