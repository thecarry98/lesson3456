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
          color: Colors.blue[500],
          child: Center(
            child: Text(
              'hello',
              style: TextStyle(
                color: Colors.red[500],
                fontSize: 50,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

void main() => runApp(const MyApp());
