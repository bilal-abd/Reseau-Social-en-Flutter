class Post {
  final int id;
  final int owner_id;
  final String text;
  final String created_at;

  Post({
    required this.id,
    required this.owner_id,
    required this.text,
    required this.created_at,
  });

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      id: json['id'],
      owner_id: json['owner_id'],
      text: json['text'],
      created_at: json['created_at'],
    );
  }
}
