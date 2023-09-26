import 'package:flutter/material.dart';

class ImageScreen extends StatelessWidget {
  const ImageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("ImageScreen")),
      body: const Center(
        child: Image(
          image: NetworkImage(
              'https://assets.goal.com/v3/assets/bltcc7a7ffd2fbf71f5/blt3125544effd09308/639f60c65d0ea95c1ee0e6c3/GettyImages-1450106798.jpg?auto=webp&format=pjpg&width=3840&quality=60'),
          height: 300,
          width: 300,
        ),
      ),
    );
  }
}
