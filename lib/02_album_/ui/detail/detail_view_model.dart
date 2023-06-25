import 'dart:convert';

import 'package:http/http.dart' as http;

class PhotoViewModel {
  Future<List<dynamic>> getPhoto() async {
    final url = 'https://jsonplaceholder.typicode.com/photos';
    final http.Response response = await http.get(Uri.parse(url));
    List<dynamic> jsonString = jsonDecode(response.body);
    return jsonString;
  }
}

void main() async {
  PhotoViewModel photoViewModel = PhotoViewModel();
  List<dynamic> albumList = await photoViewModel.getPhoto();
  print(albumList[1]);
}
