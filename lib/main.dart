import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MyAppState();
  }
}

class MyAppState extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyAppState> {
  var result = '';
  final controllerA = TextEditingController();
  final controllerB = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Calculator App'),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/calculator.png',
                      width: 150,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                      child: SizedBox(
                        width: 200,
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              gapPadding: 10,
                            ),
                            labelText: 'Nhập số A',
                          ),
                          controller: controllerA,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                      child: SizedBox(
                        width: 200,
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              gapPadding: 10,
                            ),
                            labelText: 'Nhập số B',
                          ),
                          controller: controllerB,
                        ),
                      ),
                    ),
                    Text('Kết quả: $result'),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                            child: SizedBox(
                              width: 60,
                              child: ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    var numA =
                                        double.tryParse(controllerA.text);
                                    var numB =
                                        double.tryParse(controllerB.text);
                                    if (numA == null || numB == null) {
                                      result =
                                          'Bạn chưa nhập giá trị hoặc nhập không đúng!';
                                    } else {
                                      result = '${numA + numB}';
                                    }
                                  });
                                },
                                child: const Text(
                                  '+',
                                  style: TextStyle(fontSize: 30),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                            child: SizedBox(
                              width: 60,
                              child: ElevatedButton(
                                  onPressed: () {
                                    setState(() {
                                      var numA =
                                          double.tryParse(controllerA.text);
                                      var numB =
                                          double.tryParse(controllerB.text);
                                      if (numA == null || numB == null) {
                                        result =
                                            'Bạn chưa nhập giá trị hoặc nhập không đúng!';
                                      } else {
                                        result = '${numA - numB}';
                                      }
                                    });
                                  },
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.red,
                                  ),
                                  child: const Text(
                                    '-',
                                    style: TextStyle(fontSize: 30),
                                  )),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                            child: SizedBox(
                              width: 60,
                              child: ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    var numA =
                                        double.tryParse(controllerA.text);
                                    var numB =
                                        double.tryParse(controllerB.text);
                                    if (numA == null || numB == null) {
                                      result =
                                          'Bạn chưa nhập giá trị hoặc nhập không đúng!';
                                    } else {
                                      result = '${numA * numB}';
                                    }
                                  });
                                },
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.greenAccent,
                                ),
                                child: const Text(
                                  'X',
                                  style: TextStyle(fontSize: 30),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                            child: SizedBox(
                              width: 60,
                              child: ElevatedButton(
                                  onPressed: () {
                                    setState(() {
                                      var numA =
                                          double.tryParse(controllerA.text);
                                      var numB =
                                          double.tryParse(controllerB.text);
                                      if (numA == null || numB == null) {
                                        result =
                                            'Bạn chưa nhập giá trị hoặc nhập không đúng!';
                                      } else {
                                        if (numB == 0) {
                                          result = 'Không thể chia cho số 0';
                                        } else {
                                          result = '${numA / numB}';
                                        }
                                      }
                                    });
                                  },
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.deepOrangeAccent,
                                  ),
                                  child: const Text(
                                    '/',
                                    style: TextStyle(fontSize: 30),
                                  )),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
