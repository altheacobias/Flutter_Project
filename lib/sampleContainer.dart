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
          backgroundColor: Colors.blueGrey,
          title: Text('Welcome to Flutter'),
        ),
        body: Container(
          child: Row(
            children: [
              Expanded(
                  child: Container(
                child: Text('Red'),
                alignment: Alignment.center,
                margin: EdgeInsets.fromLTRB(10, 10, 5, 10),
                //width: 80,
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  color: Colors.red,
                ),
              )),
              Expanded(
                child: Container(
                  child: Text('Blue'),
                  alignment: Alignment.center,
                  margin: EdgeInsets.fromLTRB(5, 10, 5, 10),
                  //width: 80,
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    color: Colors.blue,
                  ),
                ),
              ),
              Expanded(
                  child: Container(
                      child: Text('Yellow'),
                      alignment: Alignment.center,
                      margin: EdgeInsets.fromLTRB(5, 10, 10, 10),
                      //width: 80,
                      height: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        color: Colors.yellow,
                      ))),
            ],
          ),
        ),
      ),
    );
  }
}
