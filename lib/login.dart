import 'package:flutter/material.dart';

void main() {
  runApp(MyLogin()); //MaterialApp
}

class MyLogin extends StatelessWidget {
  const MyLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Social',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Login'),
        ),
        body: FormLogin(),
      ),
    );
  }
}

class FormLogin extends StatelessWidget {
  @override
  final TextEditingController _controllerpseudo = TextEditingController();
  final TextEditingController _controllerpassword = TextEditingController();
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextFormField(
            controller: _controllerpseudo,
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Entrer votre identifiant'),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextFormField(
            controller: _controllerpassword,
            decoration: InputDecoration(
                border: OutlineInputBorder(), hintText: 'Entrer votre Mdp'),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            top: 16,
          ),
          child: Center(
            child: ElevatedButton(
              onPressed: () {},
              child: Text('Envoyer'),
            ),
          ),
        ),
      ],
    );
  }
}
