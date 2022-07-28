import 'package:flutter/material.dart';

import 'updateList.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text(
              'Personal finance',
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.add),
              )
            ],
          ),
          body: Container(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Card(
                    child: Text('Header', textAlign: TextAlign.center),
                  ),
                  UserList()
                ],
              ),
            ),
          )),
    );
  }
}
