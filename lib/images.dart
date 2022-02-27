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
              title: Text('Rows and Columns'),
            ),
            body: Column(children: [
              Expanded(
                flex: 5,
                child: Container(
                  margin: EdgeInsets.fromLTRB(5, 5, 5, 2.5),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://images.unsplash.com/photo-1634466265016-b710d579a475?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=870&q=80'),
                          fit: BoxFit.cover)),
                ),
              ),
              Expanded(
                  flex: 5,
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
                  )),
              Expanded(
                  flex: 3,
                  child: Container(
                    child: Picture(),
                    alignment: Alignment.center,
                    margin: EdgeInsets.fromLTRB(5, 2.5, 5, 5),
                  )),
            ])));
  }
}

class Picture extends StatelessWidget {
  const Picture({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('assets/lake.jpg');
    Image image = Image(image: assetImage);

    return Container(
      child: image,
    );
  }
}
