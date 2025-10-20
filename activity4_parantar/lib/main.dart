import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Activity 4 - Images & Icons',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Activity 4 - Images and Icons'),
          backgroundColor: Colors.deepPurple,
        ),
        body: const MyImagesAndIcons(),
      ),
    );
  }
}

class MyImagesAndIcons extends StatelessWidget {
  const MyImagesAndIcons({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Local image
          Image.asset(
            'assets/photo.png',
            width: 150,
            height: 150,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 20),

          // Network image
          Image.network(
            'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
            width: 150,
            height: 150,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 20),

          // Icons row
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.favorite, color: Colors.red, size: 40),
              SizedBox(width: 20),
              Icon(Icons.star, color: Colors.amber, size: 40),
            ],
          ),
        ],
      ),
    );
  }
}