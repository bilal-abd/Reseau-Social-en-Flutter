import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../class/postclass.dart';

Future<RxList<Post>> fetchPost() async {
  final response = await http.get(Uri.parse('http://10.0.2.2/api/posts'));

  if (response.statusCode == 200) {
    List list = jsonDecode(response.body);
    RxList<Post> postlist =
        list.map((model) => Post.fromJson(model)).toList().obs;
    return postlist;
  } else {
    throw Exception('Erreur de recharge du Post');
  }
}
