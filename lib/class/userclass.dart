class FriendList {
  final String name;
  final String friendsince;
  final int numberoffriends;
  final String pathprofil;
  final String bannerpath;

  FriendList({
    required this.bannerpath,
    required this.name,
    required this.friendsince,
    required this.numberoffriends,
    required this.pathprofil,
  });

  factory FriendList.fromJson(Map<String, dynamic> json) {
    return FriendList(
        name: json['name'],
        friendsince: json['friendsince'],
        numberoffriends: json['numberoffriends'],
        bannerpath: json['bannerpath'],
        pathprofil: json['pathprofil']);
  }
}
