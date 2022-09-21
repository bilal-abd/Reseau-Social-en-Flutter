import 'package:flutter_application_1/class/owner.dart';

class Post {
  final int id;
  final int owner_id;
  final String text;
  final String created_at;
  final Owner owner;

  Post(
      {required this.id,
      required this.owner_id,
      required this.text,
      required this.created_at,
      required this.owner});

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      id: json['id'],
      owner_id: json['owner_id'],
      text: json['text'],
      created_at: json['created_at'],
      owner: Owner.fromJson(json['owner']),
    );
  }
}
