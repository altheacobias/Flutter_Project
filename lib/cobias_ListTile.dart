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
          title: Text('Using ListView'),
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
      ),
      Divider(
        height: 20,
        thickness: 2,
        indent: 20,
        endIndent: 20,
      ),
      ListTile(
        leading: Icon(Icons.agriculture),
        title: Text('List tile 2'),
        subtitle: Text('subtitle of list tile 2'),
        trailing: Icon(Icons.add_comment),
      ),
      Divider(
        height: 20,
        thickness: 2,
        indent: 20,
        endIndent: 20,
      ),
      ListTile(
        leading: Icon(Icons.add_link),
        title: Text('List tile 3'),
        subtitle: Text('subtitle of list tile 3'),
        trailing: Icon(Icons.access_alarms_rounded),
      )
    ],
  );
  return listView;
}
