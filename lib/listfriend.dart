import 'package:flutter/material.dart';

class MyFriendList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'XefiSocial',
        theme: ThemeData(
          primarySwatch: Colors.green,
        ),
        home: MyHomePage());
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Color(0xFFE0E0E0),
          title: Text("Mes amis"),
        ),
        body: ListView(
          children: [
            Card(
                child: ListTile(
              title: Text("List Item 1"),
            )),
            Card(
              child: ListTile(
                title: Text("List Item 2"),
              ),
            ),
            Card(
                child: ListTile(
              title: Text("List Item 3"),
            )),
          ],
        ));
  }
}
