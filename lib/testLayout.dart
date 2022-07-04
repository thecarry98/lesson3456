import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Viet Anh',
      home: Scaffold(appBar: AppBar(), body: coin),
    );
  }
}

var stars = Row(
  mainAxisSize: MainAxisSize.min,
  children: [
    Icon(Icons.star, color: Colors.green[400]),
    Icon(Icons.star, color: Colors.green[400]),
    Icon(Icons.star, color: Colors.green[400]),
    const Icon(Icons.star, color: Colors.black),
    const Icon(Icons.star, color: Colors.black),
  ],
);

const review = Text(
  '170 reviews',
  style: TextStyle(
    color: Colors.black,
    fontSize: 20,
  ),
);

final coin = Container(
  color: Colors.green,
  child: Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      ratings,
      listIcon,
    ],
  ),
);
final listIcon = Container(
  child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
    Column(children: [
      ListTile()
      Icon(Icons.kitchen, color: Colors.black),
      const Text('PREP:', style: TextStyle(color: Colors.black)),
      const Text('25 min', style: TextStyle(color: Colors.black)),
    ]),
    Column(children: [
      Icon(Icons.timer, color: Colors.black),
      const Text('COOK:', style: TextStyle(color: Colors.black)),
      const Text('1 hr', style: TextStyle(color: Colors.black)),
    ]),
    Column(children: [
      Icon(Icons.restaurant, color: Colors.black),
      const Text('FEEDS:', style: TextStyle(color: Colors.black)),
      const Text('4-6', style: TextStyle(color: Colors.black)),
    ]),
  ]),
);

final ratings = Container(
  padding: const EdgeInsets.all(20),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      stars,
      review,
    ],
  ),
);

void main() => runApp(const MyApp());
