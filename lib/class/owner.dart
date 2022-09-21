class Owner {
  final int id;

  final String first_name;
  final String last_name;
  final String profile_picture;
  final String cover_picture;

  Owner({
    required this.id,
    required this.first_name,
    required this.last_name,
    required this.profile_picture,
    required this.cover_picture,
  });

  factory Owner.fromJson(Map<String, dynamic> json) {
    return Owner(
      id: json['id'],
      first_name: json['first_name'],
      last_name: json['last_name'],
      profile_picture: json['profile_picture'],
      cover_picture: json['cover_picture'],
    );
  }
}
