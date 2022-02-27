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
        leading: CircleAvatar(
          backgroundImage: NetworkImage(
              'https://media.istockphoto.com/photos/great-wall-of-china-at-the-jinshanling-sectionsunset-landscape-picture-id902771120?b=1&k=20&m=902771120&s=170667a&w=0&h=FVZ_P5QDXREg7k6PGQvAUPwWk-CcJWi-dldHLYVO83I='),
        ),
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
        leading: CircleAvatar(
          backgroundImage: NetworkImage(
              'https://media.istockphoto.com/photos/eiffel-tower-and-garden-in-paris-france-picture-id183036930?b=1&k=20&m=183036930&s=170667a&w=0&h=Rd6BuQ4tYRS0Pk7nnvrpPIyP8lwqi2ASGWXq6Lk3vPE='),
        ),
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
        leading: CircleAvatar(
          backgroundImage: NetworkImage(
              'https://media.istockphoto.com/photos/great-pyramids-of-giza-picture-id901630488?b=1&k=20&m=901630488&s=170667a&w=0&h=_8AtTcmA5lyB3H_qTdJrNNFe6CcCManQcn-nGCRIGv0='),
        ),
        title: Text('Egyptian pyramids'),
        subtitle: Text('Giza City,Giza,Greater Cairo,Egypt   Population:20.9m'),
        trailing: Icon(Icons.arrow_forward_ios),
      )
    ],
  );
  return listView;
}
