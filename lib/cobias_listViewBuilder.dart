import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<MyApp> {
  final List<String> names = <String>[
    'Althea',
    'May',
    'Aeron',
    'Joshua',
    'Bobby',
    'Karen',
    'Melanie',
    'Shenna'
  ];
  final List<int> msgCount = <int>[1, 0, 17, 6, 42, 4, 8, 2];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Dynamic ListView Builder'),
        ),
        body: Column(children: <Widget>[
          Expanded(
              child: ListView.builder(
                  padding: const EdgeInsets.all(8),
                  itemCount: names.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      height: 50,
                      margin: EdgeInsets.all(2),
                      color: msgCount[index] >= 10
                          ? Colors.blue[400]
                          : msgCount[index] > 3
                              ? Colors.blue[100]
                              : Colors.grey,
                      child: Center(
                          child: Text(
                        '${names[index]} (${msgCount[index]})',
                        style: TextStyle(fontSize: 18),
                      )),
                    );
                  }))
        ]));
  }
}
