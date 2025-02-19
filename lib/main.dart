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
        body: Container(
          height: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              Icon(
                Icons.star,
                size: 60,
                color: Colors.yellow,
              ),
              Image(
                image: AssetImage('assets/juta1.png'),
                width: 100,
                height: 100,
              ),
              Icon(
                Icons.star,
                weight: 50,
                size: 60,
                color: Colors.yellow,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
