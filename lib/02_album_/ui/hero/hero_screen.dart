import 'package:flutter/material.dart';

class HeroSceen extends StatelessWidget {
  const HeroSceen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Hero(
      // tag: photoList[index]['id'],
      // child: Container(
      //   child: Center(
      // child: Image.network(photoList[widget.albumId]['url']),
      tag: 1,
      child: Container(
        child: Center(
          child: Image.network('https://via.placeholder.com/600/771796'),
        ),
      ),
    ));
  }
}
