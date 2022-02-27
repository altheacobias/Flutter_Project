import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text(
          'Welcome To Flutter',
          style: TextStyle(color: Colors.amber),
        ),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              child: Text(''),
              width: 360,
              height: 540,
              margin: EdgeInsets.all(8),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  color: Colors.teal,
                  border: Border.all(
                    color: Colors.amberAccent,
                    width: 10,
                  )),
            )
          ],
        ),
      ),
    ));
  }
}
