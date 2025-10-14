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
      title: 'Activity 2 - Basic Widgets',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Activity 2 - Basic Widgets'),
          backgroundColor: Colors.blueAccent,
        ),
        body: const Center(
          child: MyBasicWidgets(),
        ),
      ),
    );
  }
}

class MyBasicWidgets extends StatelessWidget {
  const MyBasicWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Your name
        const Text(
          'Lorenzo Alec Parantar',
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: Colors.blue,
          ),
        ),

        const SizedBox(height: 10),

        // Your favorite quote
        const Text(
          '"Wake up. Eat. Sleep. Repeat."',
          style: TextStyle(
            fontSize: 18,
            fontStyle: FontStyle.italic,
          ),
        ),

        const SizedBox(height: 20),

        // A simple colored box (Container)
        Container(
          width: 100,
          height: 100,
          color: Colors.orange,
          child: const Center(
            child: Text(
              'Hello!',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
        ),
      ],
    );
  }
}