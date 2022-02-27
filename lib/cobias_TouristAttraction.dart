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
          backgroundColor: Colors.blueAccent,
          title: Text('Tourist Attractions'),
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
        leading: Icon(Icons.airplay),
        title: Text('Great Wall of China'),
        subtitle:
            Text('Huairou District, China             Population: 373,000'),
        trailing: Icon(Icons.arrow_forward_ios),
      ),
      Divider(
        height: 20,
        thickness: 2,
        indent: 20,
        endIndent: 20,
      ),
      ListTile(
        leading: Icon(Icons.album_rounded),
        title: Text('Eiffel Tower'),
        subtitle: Text('7th arrondissement,Paris,France   Population:2.1m'),
        trailing: Icon(Icons.arrow_forward_ios),
      ),
      Divider(
        height: 20,
        thickness: 2,
        indent: 20,
        endIndent: 20,
      ),
      ListTile(
        leading: Icon(Icons.bathroom),
        title: Text('Egyptian pyramids'),
        subtitle: Text('Giza City,Giza,Greater Cairo,Egypt   Population:20.9m'),
        trailing: Icon(Icons.arrow_forward_ios),
      )
    ],
  );
  return listView;
}
