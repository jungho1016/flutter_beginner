import 'package:flutter/material.dart';
import 'package:flutter_beginner/02_album/ui/detail/detail_screen.dart';
import 'package:flutter_beginner/02_album/ui/main/main_view_model.dart';

import '../../model/album.dart';

class MainScreen extends StatefulWidget {
  MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final AlbumViewModel albumViewModel = AlbumViewModel();

  // 여기서 받아서 late로 넣어야하는건지 질문?

  @override
  Widget build(BuildContext context) {
    final Future<List<Album>> album = albumViewModel.getAlbum();
    return Scaffold(
      appBar: AppBar(
        title: Text('Album'),
        centerTitle: true,
      ),
      body: FutureBuilder<List<dynamic>>(
        future: album,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final albumList = snapshot.data!;
            return ListView.builder(
              itemCount: albumList.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DetailScreen(
                                albumId: albumList[index].id,
                              )),
                    );
                  },
                  child: ListTile(
                    title: Text(albumList[index].id.toString()),
                    subtitle: Text(albumList[index].title),
                    // Text(albumList[index].title),
                  ),
                );
              },
            );
          } else if (snapshot.hasError) {
            return Text("에러 발생: ${snapshot.error}");
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
