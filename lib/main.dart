import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/profil/profilview.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: 'XefiSocial',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: ProfilPage());
  }
}
