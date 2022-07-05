import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Viet Anh',
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  _createHome createState() => _createHome();
}

class _createHome extends State<Home> {
  final a = Text;
  Widget con(String t) {
    return Container(
      child: Text(t),
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: con('haha'),
    );
  }
}
