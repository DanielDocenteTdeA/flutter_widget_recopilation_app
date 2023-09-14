import 'package:flutter/material.dart';
import 'package:widget_recopilation_app_class/screens/image_screen.dart';
import 'package:widget_recopilation_app_class/screens/listview1_screen.dart';
import 'package:widget_recopilation_app_class/screens/navigator_screen.dart';

import 'screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: 'home', //Ruta por defecto
      routes: {
        'home': (_) => HomeScreen(),
        'listview1': (_) => Listview1Screen(),
        'navigator': (_) => NavigatorScreen(),
        'imagescreen': (context) => ImageScreen()
      },
    );
  }
}
