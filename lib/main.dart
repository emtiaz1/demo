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
                style: TextStyle(color: Color.fromARGB(239, 255, 255, 255))),
            centerTitle: true,
          ),
          body: Container(
            margin: const EdgeInsets.fromLTRB(20, 20, 20, 300),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Color.fromARGB(242, 250, 249, 246),
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 10, // changes position of shadow
                ),
              ],
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Text(
                        "50% OFF",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Icon(Icons.favorite_outline_outlined,
                        size: 45, color: Colors.grey),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  child: Image(
                    image: AssetImage("assets/juta1.png"),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Nike Air Shoes",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                ),
                Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.fromLTRB(10, 5, 0, 0),
                      child: Text(
                        "\$450",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 23,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(50, 5, 0, 0),
                      child: Text(
                        "\$500",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 23,
                          decoration: TextDecoration.lineThrough,
                          decorationColor: Colors.grey,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          )),
    );
  }
}
