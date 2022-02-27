import 'package:flutter/material.dart';
import 'package:myapp/main.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey,
          title: Text('Rows & Columns'),
        ),
        body: Column(
          children: [
            Expanded(
                flex: 4,
                child: Container(
                  margin: EdgeInsets.fromLTRB(5, 5, 5, 2.5),
                  color: Colors.yellow,
                )),
            Expanded(
              flex: 4,
              child: Row(
                children: [
                  Expanded(
                      flex: 5,
                      child: Container(
                        margin: EdgeInsets.fromLTRB(5, 2.5, 2.5, 2.5),
                        color: Colors.blue,
                      )),
                  Expanded(
                      flex: 5,
                      child: Container(
                        margin: EdgeInsets.fromLTRB(2.5, 2.5, 5, 2.5),
                        color: Colors.pink,
                      )),
                ],
              ),
            ),
            Expanded(
                flex: 2,
                child: Container(
                  margin: EdgeInsets.fromLTRB(5, 2.5, 5, 5),
                  color: Colors.greenAccent,
                )),
          ],
        ),
      ),
    );
  }
}
