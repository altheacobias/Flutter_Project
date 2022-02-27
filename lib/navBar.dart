import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _current = 0;

  final cont = [
    myListView(),
    ConListView(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        title: Text('Navigation Bar'),
      ),
      body: cont[_current],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _current,
        selectedFontSize: 20,
        iconSize: 20,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: ('Home'),
              backgroundColor: Colors.amberAccent),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: ('Profile'),
              backgroundColor: Colors.amberAccent),
        ],
        onTap: (index) {
          setState(() {
            _current = index;
          });
        },
      ),
    ));
  }
}

myListView() {
  var listView = ListView(
    children: [
      Card(
          elevation: 0,
          child: Center(
            child: Image.asset(
              'assets/kate.jpg',
              fit: BoxFit.cover,
              width: 200,
              height: 150,
            ),
          )),
      Card(
        elevation: 5,
        child: ListTile(
          title: Text(
              'Name: Althea Kate Cobias                          Phone Number:09151828834                      Email: katy.kccobias@gmail.com                    Facebook: Althea Kate Cobias          Instagram: katy_kccat                                Discord: katy_kat                               Specialization: Multimedia'),
        ),
      )
    ],
  );
  return listView;
}

ConListView() {
  var listView = ListView(
    children: [
      ListTile(
        leading: CircleAvatar(
          backgroundImage: NetworkImage(
              'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80'),
        ),
        title: Text('Jenny Hudson'),
        subtitle: Text('Web Designer'),
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
              'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80'),
        ),
        title: Text('Adrian Santos'),
        subtitle: Text('Web Developer'),
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
              'https://images.unsplash.com/photo-1615208429553-d9982932ca5c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80'),
        ),
        title: Text('Robert Edwin'),
        subtitle: Text('Network Architect'),
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
              'https://images.unsplash.com/photo-1506794778202-cad84cf45f1d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80'),
        ),
        title: Text('Hendrickson Hamilton'),
        subtitle: Text('Senior Programmer'),
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
              'https://images.unsplash.com/photo-1534751516642-a1af1ef26a56?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=389&q=80'),
        ),
        title: Text('Christina Castrillo'),
        subtitle: Text('Web Developer'),
      ),
      Divider(
        height: 20,
        thickness: 2,
        indent: 20,
        endIndent: 20,
      ),
    ],
  );
  return listView;
}
