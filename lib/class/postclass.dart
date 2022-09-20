class Post {
  final int id;
  final String name;
  final String email;
  final String body;

  Post({
    required this.id,
    required this.name,
    required this.email,
    required this.body,
  });

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      id: json['id'],
      name: json['name'],
      email: json['email'],
      body: json['text'],
    );
  }
}
