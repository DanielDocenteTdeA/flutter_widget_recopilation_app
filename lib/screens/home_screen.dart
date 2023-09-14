import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  final options = <Map<String, dynamic>>[
    {'title': 'ListView1', 'icon': Icons.list},
    {'title': 'Navigator', 'icon': Icons.assistant_navigation},
    {'title': 'Image Widget', 'icon': Icons.image}
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
              Navigator.pushNamed(context, 'imagescreen');
            },
          );
        },
        separatorBuilder: (_, __) => const Divider(),
      ),
    );
  }
}
