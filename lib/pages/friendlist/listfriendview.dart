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
        title: Text("My Friends", style: TextStyle(color: Colors.black)),
      ),
      body: ListView.builder(
        shrinkWrap: true,

        // itemCount: controller.postList.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(padding: EdgeInsets.only(left: 10)),
                  CircleAvatar(
                    backgroundImage: NetworkImage(''),
                    radius: 25,
                  ),
                  Padding(padding: EdgeInsets.only(left: 20)),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('2Pac Shakur'),
                      Padding(padding: EdgeInsets.only(bottom: 6)),
                      Row(
                        children: [
                          Text(
                            'Ami depuis',
                            style: TextStyle(color: Colors.grey),
                          ),
                          SizedBox(
                            width: 100,
                          ),
                          Text(
                            'Amis : 99+',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              Divider(
                thickness: 1.5,
              ),
            ],
          );
        },
      ),
    );
  }
}
