import 'package:flutter/material.dart';
import 'package:flutter_application_1/class/postclass.dart';
import 'package:flutter_application_1/pages/friendlist/listfriendview.dart';
import 'package:flutter_application_1/pages/profil/profilcontroller.dart';
import 'package:get/get.dart';

class ProfilPage extends GetView<ProfilController> {
  int selectedIndex = 0;

  late Future<Post> futurePost;
  final ProfilController c = Get.put(ProfilController());

  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
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
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  SizedBox(
                    width: context.width,
                    child: Image.network(
                      "https://thumbs.dreamstime.com/b/lecteur-de-v%C3%A9hicule-de-nuit-8260480.jpg",
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 180),
                    child: CircleAvatar(
                      radius: 60,
                      backgroundColor: Colors.white,
                      child: CircleAvatar(
                        radius: 57,
                        backgroundImage: NetworkImage(
                            'https://hiphopcorner.fr/wp-content/uploads/frontend/2018/11/image-tupac-amaru-shakur-blue.jpg'),
                      ),
                    ),
                  )
                ],
              ),
              Padding(padding: EdgeInsets.only(top: 20)),
              Text(
                "2pac Shakur",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              Row(
                children: [
                  Padding(padding: EdgeInsets.only(left: 50)),
                  Text(
                    'Amis (99+)',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Padding(padding: EdgeInsets.only(left: 110)),
                  TextButton(
                      onPressed: () {
                        Get.to(MyFriendList());
                      },
                      child: Text(
                        'VOIR PLUS',
                        style: TextStyle(
                            color: Colors.red, fontWeight: FontWeight.bold),
                      ))
                ],
              ),
              ListView(
                physics: const NeverScrollableScrollPhysics(),
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                children: <Widget>[
                  ListTile(
                    title: Text('Elon Musk'),
                    subtitle: Text('Ami depuis 3 ans'),
                    leading: CircleAvatar(backgroundColor: Colors.blue),
                  ),
                  ListTile(
                    title: Text('Jeff Bezos'),
                    subtitle: Text('Ami depuis 3 ans'),
                    leading: CircleAvatar(backgroundColor: Colors.blue),
                  ),
                  ListTile(
                    title: Text('Mark Zuckerberg'),
                    subtitle: Text('Ami depuis 3 ans'),
                    leading: CircleAvatar(backgroundColor: Colors.blue),
                  )
                ],
              ),
              Padding(padding: EdgeInsets.only(top: 30)),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  width: 200,
                  child: Row(children: [
                    Icon(Icons.edit_outlined),
                    Text(
                      "Créer une publication",
                    ),
                  ]),
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 9)),
              Card(
                child: SizedBox(
                  child: TextField(
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                        hintText: 'Exprimez-vous',
                        border: OutlineInputBorder(),
                        contentPadding: EdgeInsets.symmetric(vertical: 20)),
                    maxLines: 5,
                    minLines: 1,
                  ),
                ),
              ),
              ElevatedButton(
                  onPressed: (() {}),
                  child: Text('Publier'),
                  style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 5, 72, 128))),
              Padding(padding: EdgeInsets.only(bottom: 15)),
              Obx(() => ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: controller.postList.length,
                    itemBuilder: (context, index) {
                      Padding(padding: EdgeInsets.only(top: 120));
                      return Card(
                        color: Color(0xFFEEEEEE),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                CircleAvatar(
                                    radius: 20,
                                    backgroundImage: NetworkImage(
                                        'https://hiphopcorner.fr/wp-content/uploads/frontend/2018/11/image-tupac-amaru-shakur-blue.jpg')),
                                Column(
                                  children: [
                                    Text(controller
                                        .postList[index].owner.first_name),
                                    Text(controller.postList[index].created_at),
                                  ],
                                ),
                                Spacer(
                                  flex: 1,
                                ),
                                IconButton(
                                    onPressed: (() {}),
                                    icon: Icon(Icons.more_vert))
                              ],
                            ),
                            Text(controller.postList[index].text),
                            Padding(padding: EdgeInsets.only(bottom: 20)),
                          ],
                        ),
                      );
                      Padding(
                        padding: EdgeInsets.only(bottom: 120),
                      );
                    }, 
                  )),
            ],
          ),
        ));
  }
}
