import 'package:flutter/material.dart';
import 'package:myapp/cobiascolors.dart';

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
          backgroundColor: Colors.amberAccent,
          title: Text('ListView'),
        ),
        body: myListView(),
      ),
    );
  }
}

myListView() {
  var listView = ListView(
    children: [
      ListTile(
        leading: Icon(Icons.nature_people),
        title: Text('List tile 1'),
        subtitle: Text('subtitle of list tile 1'),
        trailing: Icon(Icons.add_a_photo),
      )
    ],
  );
  return listView;
}
