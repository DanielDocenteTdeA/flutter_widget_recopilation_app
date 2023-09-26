import 'package:flutter/material.dart';
import 'package:widget_recopilation_app_class/screens/RoundedButton_screen.dart';
import 'package:widget_recopilation_app_class/screens/animatedalign_screen.dart';
import 'package:widget_recopilation_app_class/screens/autocomplete_screen.dart';
import 'package:widget_recopilation_app_class/screens/card_screen.dart';
import 'package:widget_recopilation_app_class/screens/drawer_screen.dart';
import 'package:widget_recopilation_app_class/screens/form_screen.dart';
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
      debugShowCheckedModeBanner: false,
      initialRoute: 'home', //Ruta por defecto
      routes: {
        'home': (_) => HomeScreen(),
        'listview1_screen': (_) => Listview1Screen(),
        'navigator_screen': (_) => NavigatorScreen(),
        'image_screen': (context) => ImageScreen(),
        'roundedbutton_screen': (context) => MyRoundedButton(),
        'card_screen': (context) => MyCardWidget(),
        'form': (context) => MyCustomForm(),
        'drawer_widget': (context) => DrawerWidget(),
        'animated_align': (context) => AnimatedAlignExample(),
        'autocomplete': (context) => AutocompleteWidget()
      },
    );
  }
}
