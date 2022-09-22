import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyFriendList extends GetView {
  MyFriendList({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    int _currentIndex = 0;
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Accueil',
            ),
            BottomNavigationBarItem(icon: Icon(Icons.people), label: 'Amis'),
            BottomNavigationBarItem(
                icon: Icon(Icons.insights), label: 'Statistiques'),
          ],
          onTap: (index) => {}),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xFFE0E0E0),
        title: Text("Mes Amis", style: TextStyle(color: Colors.black)),
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
                      Text('Alexandre Pozzi'),
                      Padding(padding: EdgeInsets.only(bottom: 6)),
                      Row(
                        children: [
                          Text(
                            'Ami depuis 2 mois',
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
