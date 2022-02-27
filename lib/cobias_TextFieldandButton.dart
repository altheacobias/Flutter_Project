import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var num1 = 0, num2 = 0;
  var ans = "";

  final TextEditingController t1 = new TextEditingController(text: "");
  final TextEditingController t2 = new TextEditingController(text: "");

  void add() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      ans = (num1 + num2).toString();
    });
  }

  void mult() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      ans = (num1 * num2).toString();
    });
  }

  void div() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      ans = (num1 / num2).toString();
    });
  }

  void sub() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      ans = (num1 - num2).toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown[200],
        title: Text('Simple App Using Text field and button'),
      ),
      body: Container(
        padding: EdgeInsets.all(15.0),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
                hintText: "First Number",
                border: OutlineInputBorder(
                    borderSide: BorderSide(width: 2),
                    borderRadius: BorderRadius.all(Radius.circular(20.0)))),
            controller: t1,
          ),
          Padding(padding: EdgeInsets.only(top: 15.0)),
          TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
                hintText: "Second Number",
                border: OutlineInputBorder(
                    borderSide: BorderSide(width: 2),
                    borderRadius: BorderRadius.all(Radius.circular(20.0)))),
            controller: t2,
          ),
          Padding(padding: EdgeInsets.only(top: 15.0)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(onPressed: add, child: Text("+")),
              ElevatedButton(onPressed: mult, child: Text("*")),
              ElevatedButton(onPressed: div, child: Text("/")),
              ElevatedButton(onPressed: sub, child: Text("-")),
            ],
          ),
          Padding(padding: EdgeInsets.only(top: 20.0)),
          Text(
            "The result is: $ans",
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
          )
        ]),
      ),
    ));
  }
}
