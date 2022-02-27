//ignore_for_file:prefer_const_constructors, use_key_in_widget_Constructors,file_names

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

//Althea Kate L. Cobias
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue,
            title: Text('Colors'),
          ),
          body: Column(
            children: [
              Expanded(
                flex: 4,
                child: Row(
                  children: [
                    Expanded(
                        child: Container(
                      color: Colors.red,
                    )),
                    Expanded(child: Container(color: Colors.orange)),
                    Expanded(
                        child: Container(
                      color: Colors.orange,
                    )),
                  ],
                ),
              ),
              Expanded(
                flex: 4,
                child: Row(
                  children: [
                    Expanded(
                        child: Container(
                      color: Colors.red,
                    )),
                    Expanded(
                        child: Container(
                      color: Colors.green,
                    )),
                    Expanded(
                        child: Container(
                      color: Colors.purple,
                    )),
                  ],
                ),
              ),
              Expanded(
                flex: 4,
                child: Row(
                  children: [
                    Expanded(
                        child: Container(
                      color: Colors.blue,
                    )),
                    Expanded(
                        child: Container(
                      color: Colors.blue,
                    )),
                    Expanded(
                        child: Container(
                      color: Colors.purple,
                    )),
                  ],
                ),
              ),
              Expanded(
                flex: 8,
                child: Container(
                  color: Colors.white,
                ),
              ),
            ],
          )),
    );
  }
}
