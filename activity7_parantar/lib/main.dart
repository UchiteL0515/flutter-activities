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
      title: 'Activity 7 - ListView and Scrolling',
      home: const ListViewExample(),
    );
  }
}

class ListViewExample extends StatelessWidget {
  const ListViewExample({super.key});

  @override
  Widget build(BuildContext context) {
    // Sample list data
    final List<String> items = [
      'Lorenzo Alec Parantar',
      'Dave Laping',
      'Julaica Quibal',
      'Alliah Ashley Gabuya',
      'Alaisa Maquilan',
      'Talisay City',
      'Cebu City',
      'Mandaue City',
      'Apple',
      'Banana',
      'Orange'
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView and Scrolling'),
        backgroundColor: Colors.indigo,
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.indigo,
                child: Text(
                  items[index][0],
                  style: const TextStyle(color: Colors.white),
                ),
              ),
              title: Text(items[index]),
              subtitle: Text('Item ${index + 1}'),
              trailing: const Icon(Icons.arrow_forward_ios, size: 16),
            ),
          );
        },
      ),
    );
  }
}