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

class DetailScreen extends StatelessWidget {
  const DetailScreen(
      {super.key,
      required this.title,
      required this.link,
      required this.des,
      required this.price});
  final des;
  final title;
  final price;
  final link;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Column(
        children: [
          Image.asset('assets/images/$link.jpg'),
          Text(
            price.toString(),
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.red,
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
          Text(
            des,
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        ],
      ),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});
  _productState createState() => _productState();
}

class _productState extends State<Home> {
  void onTap(String l, String t, double p, String s) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) =>
                DetailScreen(link: l, title: t, price: p, des: s)));
  }

  Widget build(BuildContext context) {
    Widget products(
        String linkName, String title, double price, String description) {
      return InkWell(
        onTap: () => onTap(linkName, title, price, description),
        child: Container(
          padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
          ),
          child: Image.asset(
            'assets/images/$linkName.jpg',
            fit: BoxFit.contain,
          ),
        ),
      );
    }

    Widget padding(String l, String t, double p, String d) {
      return Padding(
        padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
        child: products(l, t, p, d),
      );
    }

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Products',
          style: TextStyle(fontSize: 30, color: Colors.red[500]),
        ),
      ),
      body: GridView.count(mainAxisSpacing: 0, crossAxisCount: 2, children: [
        //products('1', 'Ảnh 1', 23, 'Của mọi nhà'),
        //products('2', 'Ảnh 2', 34, 'Của mọi nhà'),
        //products('3', 'Ảnh 3', 23, 'Của mọi nhà'),
        Image.asset(
          'assets/images/1.png',
        ),
        Image.asset(
          'assets/images/1.png',
        ),

        Image.asset(
          'assets/images/1.png',
        ),
      ]),
    );
  }
}
