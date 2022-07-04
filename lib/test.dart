import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Viet Anh',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Duong Viet Anh',
              style: TextStyle(color: Colors.amber)),
          backgroundColor: Colors.yellow[400],
        ),
        body: Container(
          color: Colors.white,
          child: Center(
            child: Row(mainAxisSize: MainAxisSize.min, children: [
              Icon(Icons.star, color: Colors.green[400]),
              Icon(Icons.star, color: Colors.green[400]),
              Icon(Icons.star, color: Colors.green[400]),
              Icon(Icons.star, color: Colors.black),
              Icon(Icons.star, color: Colors.black),
            ]),
          ),
        ),
      ),
    );
  }
}

void main() => runApp(const MyApp());
