import 'package:flutter/material.dart';
import 'package:flutter_beginner/02_album/model/photo.dart';
import 'package:flutter_beginner/02_album/ui/hero/hero_screen.dart';

import 'detail_view_model.dart';

class DetailScreen extends StatefulWidget {
  final int albumId;
  DetailScreen({Key? key, required this.albumId}) : super(key: key);

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  PhotoViewModel photoViewModel = PhotoViewModel();
  late List<dynamic> photoList;

  @override
  void initState() {
    super.initState();
    loadData();
  }

  Future<void> loadData() async {
    photoList = await photoViewModel.getPhoto();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Photo'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: FutureBuilder<List<dynamic>>(
          future: photoViewModel.getPhoto(), //photoList쓰면 빨간불???
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(child: CircularProgressIndicator());
            } else if (snapshot.hasError) {
              return Text('에러 발생: ${snapshot.error}');
            } else {
              photoList = snapshot.data!;
              return GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                ),
                itemCount: photoList[widget.albumId].length, // 왜 5개 나올까?
                itemBuilder: (context, index) {
                  return Hero(
                    // tag: photoList[index]['id'],  // 뭔가 태그 받을 모델이랑 네비게이션으로 데이터 전달해줘야할듯
                    tag: 1,
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HeroSceen()),
                        );
                      },
                      child: Container(
                        child: Center(
                          child:
                              Image.network(photoList[widget.albumId]['url']),
                        ),
                      ),
                    ),
                  );
                },
              );
            }
          },
        ),
      ),
    );
  }
}
