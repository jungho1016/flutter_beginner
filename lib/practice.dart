class Movie {
  int id;
  String title;

  Movie({required this.id, required this.title});

  Movie.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        title = json['title'];

  @override
  String toString() {
    return '{ id: $id, title: $title}';
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
    };
  }
}

class A {
  List<dynamic> getA() {
    List<dynamic> jsonString = [
      {'id': 1, 'title': '영화'},
      {'id': 2, 'title': '무비'}
    ];
    return jsonString;
  }
}

class B {
  getB() {
    List<dynamic> jsonString = [
      {'id': 1, 'title': '영화'},
      {'id': 2, 'title': '무비'}
    ];

    print(jsonString.map((e) => Movie.fromJson(e)).toList().runtimeType);
    print(jsonString.map((e) => Movie.fromJson(e)));
    return jsonString.map((e) => Movie.fromJson(e));
  }
}

void main() {
  // A a = A();
  // List<dynamic> albums = a.getA();
  // print(albums); // List<dynimic으로 가져오기 [{id: 1, title: 영화}, {id: 2, title: 무비}]
  // for (Map<String, dynamic> albumJson in albums) {
  //   Movie album = Movie.fromJson(albumJson);
  //   print(album); // Map으로 치환, { id: 1, title: 영화}{ id: 2, title: 무비}
  // }

  B b = B();
  final albums1 = b.getB();

  // Movie 인스턴스화 해서 가져오기, [{ id: 1, title: 영화}, { id: 2, title: 무비}]
}
