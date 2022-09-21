import 'dart:convert';

import 'package:http/http.dart' as http;

import '../class/postclass.dart';

Future<List<Post>> fetchPost() async {
  final response = await http.get(Uri.parse('http://10.0.2.2/api/posts/'));

  if (response.statusCode == 200) {
    Map<String, dynamic> body = jsonDecode(response.body);

    List<Post> postlist =
        body['data'].map<Post>((post) => Post.fromJson(post)).toList();
    return postlist;
  } else {
    throw Exception('Erreur de recharge du Post');
  }
}

//Récupération des valeurs des customsFields
  