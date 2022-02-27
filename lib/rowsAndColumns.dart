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
          backgroundColor: Colors.blueAccent,
          title: Text('Rows and Columns'),
        ),
        body: Column(
          children: [
            Expanded(
                flex: 3,
                child: Container(
                  margin: EdgeInsets.fromLTRB(5, 5, 5, 2.5),
                  color: Colors.yellow,
                )),
            Expanded(
              flex: 5,
              child: Row(
                children: [
                  Expanded(
                      flex: 5,
                      child: Container(
                        margin: EdgeInsets.fromLTRB(5, 2.5, 2.5, 2.5),
                        color: Colors.red,
                      )),
                  Expanded(
                    flex: 5,
                    child: Column(children: [
                      Expanded(
                          flex: 1,
                          child: Container(
                            margin: EdgeInsets.fromLTRB(2.5, 2.5, 5, 2.5),
                            color: Colors.blueGrey,
                          )),
                      Expanded(
                          flex: 3,
                          child: Container(
                            margin: EdgeInsets.fromLTRB(2.5, 2.5, 5, 2.5),
                            color: Colors.pink,
                          )),
                    ]),
                  )
                ],
              ),
            ),
            Expanded(
                flex: 2,
                child: Container(
                  margin: EdgeInsets.fromLTRB(5, 2.5, 5, 5),
                  color: Colors.purple,
                )),
          ],
        ),
      ),
    );
  }
}
