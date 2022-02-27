import 'package:flutter/material.dart';
import 'package:myapp/main.dart';

void main() {
  runApp(MyApp());
}

//Althea Kate Cobias
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
                backgroundColor: Colors.blueAccent, title: Text('Colors')),
            body: Container(
              child: Row(children: [
                Expanded(
                    flex: 5,
                    child: Container(
                      alignment: Alignment.topLeft,
                      height: 25,
                      width: 100,
                      color: Colors.red,
                    )),
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                          child: Container(
                        alignment: Alignment.topRight,
                        width: 80,
                        height: 90,
                        color: Colors.yellow,
                      )),
                      Expanded(
                          child: Container(
                        alignment: Alignment.center,
                        width: 80,
                        height: 90,
                        color: Colors.green,
                      ))
                    ],
                  ),
                )
              ]),
            )));
  }
}
