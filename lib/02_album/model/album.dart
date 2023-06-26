class Album {
  int userId;
  int id;
  String title;

  Album({required this.userId, required this.id, required this.title});

  Album.fromJson(Map<String, dynamic> json)
      : userId = json['userId'],
        id = json['id'],
        title = json['title'];

  @override
  String toString() {
    return '{userId: $userId, id: $id, title: $title}';
  }

  Map<String, dynamic> toJson() {
    return {
      'userId': userId,
      'id': id,
      'title': title,
    };
  }
}
