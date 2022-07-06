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

class _miniState extends State {
  //_miniState();
  //final linkName;
  //final price;
  //final title;
  //final des;
  //final text = 'haha';
  var _count = 0;
  void _setState() {
    setState(() => _count++);
  }

  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            '$_count',
          ),
          ElevatedButton(
            onPressed: _setState,
            child: Text('haha'),
          ),
        ],
      ),
    );
  }
}

class _productState extends State<Home> {
  final String l = 'text';
  _miniState cr() => _miniState();
  void onTap(String l, String t, double p, String s) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) =>
                DetailScreen(link: l, title: t, price: p, des: s)));
  }

  Widget build(BuildContext context) {
    Widget productTitle(String title) {
      return Container(
        height: 50,
        color: Color(0xFF0E3311).withOpacity(0.5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(Icons.heart_broken, color: Colors.white),
            Text(
              title,
              style: TextStyle(color: Colors.white),
            ),
            Icon(Icons.shopping_cart, color: Colors.white),
          ],
        ),
      );
    }

    Widget products(
        String linkName, String title, double price, String description) {
      return InkWell(
        onTap: () => onTap(linkName, title, price, description),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Stack(
            fit: StackFit.expand,
            children: [
              Image.asset('assets/images/$linkName.jpg', fit: BoxFit.fill),
              Positioned(
                width: MediaQuery.of(context).size.width / 2,
                bottom: 0,
                child: productTitle(title),
              )
            ],
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
        leading: Icon(Icons.menu),
        centerTitle: true,
        actions: [Icon(Icons.more_vert), Icon(Icons.shopping_cart)],
        title: Text(
          'Viet Anh',
          style: TextStyle(fontSize: 30, color: Colors.red[500]),
        ),
      ),
      body: GridView.count(
          padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          crossAxisCount: 2,
          children: [
            products('1', 'Ảnh 1', 23, 'Của mọi nhà Ảnh 1'),
            products('2', 'Ảnh 2', 34, 'Của mọi nhà Ảnh 2'),
            products('3', 'Ảnh 3', 43, 'Của mọi nhà Ảnh 3'),

            //cr().build(context),
            // Container(
            //     decoration: BoxDecoration(
            //         borderRadius: BorderRadius.all(Radius.circular(30)),
            //         image: DecorationImage(
            //             image: AssetImage('assets/images/1.png'), fit: BoxFit.fill))
            // child: Image.asset(
            //   'assets/images/1.png',
            //   fit: BoxFit.fill,
            // ),
          ]),
    );
  }
}
