import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text('MyWidget'),
          centerTitle: true,
        ),
        body: Row(
          
          children: const [
            Icon(
              Icons.star,
              size: 60,
              color: Colors.yellow,
            ),
            Icon(
              Icons.star,
              size: 60,
              color: Colors.yellow,
            ),
            Icon(
              Icons.star,
              size: 60,
              color: Colors.grey,
            ),
            Icon(
              Icons.star,
              size: 60,
              color: Colors.grey,
            ),
            Icon(
              Icons.star,
              size: 60,
              color: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}
