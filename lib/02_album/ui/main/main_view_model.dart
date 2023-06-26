import 'dart:convert';

import 'package:flutter_beginner/02_album/model/album.dart';
import 'package:http/http.dart' as http;

class AlbumViewModel {
  Future<List<Album>> getAlbum() async {
    final url = 'https://jsonplaceholder.typicode.com/albums';
    final http.Response response = await http.get(Uri.parse(url));
    List<dynamic> jsonString = jsonDecode(response.body);
    return jsonString.map((e) => Album.fromJson(e)).toList();
    // return Album.fromJson(jsonString);
  }
}

void main() async {
  AlbumViewModel albumViewModel = AlbumViewModel();
  List<Album> albumList = await albumViewModel.getAlbum();

  print(albumList);
}
