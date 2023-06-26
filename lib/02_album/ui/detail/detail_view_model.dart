import 'dart:convert';

import 'package:http/http.dart' as http;

import '../../model/photo.dart';

class PhotoViewModel {
  Future<List<Photo>> getPhoto() async {
    final url = 'https://jsonplaceholder.typicode.com/photos';
    final http.Response response = await http.get(Uri.parse(url));
    List<dynamic> jsonString = jsonDecode(response.body);
    return jsonString.map((e) => Photo.fromJson(e)).toList();
  }
}

void main() async {
  PhotoViewModel photoViewModel = PhotoViewModel();
  List<Photo> photoList = await photoViewModel.getPhoto();
  print(photoList[2]);
}
