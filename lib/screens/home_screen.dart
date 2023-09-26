import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  final List<Map<String, dynamic>> options = <Map<String, dynamic>>[
    {'title': 'ListView1', 'icon': Icons.list, 'routeName': 'listview1_screen'},
    {
      'title': 'Navigator',
      'icon': Icons.assistant_navigation,
      'routeName': 'navigator_screen'
    },
    {'title': 'Image Widget', 'icon': Icons.image, 'routeName': 'image_screen'},
    {
      'title': 'boton redondeado',
      'icon': Icons.radio_button_on_rounded,
      'routeName': 'roundedbutton_screen'
    },
    {
      'title': 'card screen',
      'icon': Icons.card_travel,
      'routeName': 'card_screen'
    },
    {'title': 'form', 'icon': Icons.star_border_outlined, 'routeName': 'form'},
    {'title': 'Drawer', 'icon': Icons.menu, 'routeName': 'drawer_widget'},
    {
      'title': 'Animated Align',
      'icon': Icons.animation,
      'routeName': 'animated_align'
    },
    {
      'title': 'Animated Align',
      'icon': Icons.animation,
      'routeName': 'animated_align'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Vista Principal")),
      ),
      body: ListView.separated(
        itemCount: options.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(options[index]['icon']),
            title: Text(options[index]['title']),
            onTap: () {
              Navigator.pushNamed(context, options[index]['routeName']);
            },
          );
        },
        separatorBuilder: (_, __) => const Divider(),
      ),
    );
  }
}
