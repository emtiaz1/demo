import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

/*
overflow handle:
1. Single child scroll view
  -Scrollable
2. 
*/
class MyApp extends StatelessWidget {
  const MyApp({super.key});
/*overflow handle:
1. Single child scroll view
  -Scrollable
2. Expended
  - compress spaces, overwrite the objects
3. Flexible
  - like as expended but give more cumstomization
*/
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text('Flutter Basics - 02',
              style: TextStyle(color: Colors.white)),
          centerTitle: true,
        ),
        body: Container(
          width: double.infinity,
          color: Colors.grey,
          height: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: List.generate(
                100,
                (index) => Icon(Icons.star,
                    size: index.toDouble(), color: Colors.blue),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
