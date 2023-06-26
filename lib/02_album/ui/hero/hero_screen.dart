import 'package:flutter/material.dart';

class HeroSceen extends StatelessWidget {
  final String tag;
  final String image;

  HeroSceen({Key? key, required this.tag, required this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Hero(
      // tag: photoList[index]['id'],
      // child: Container(
      //   child: Center(
      // child: Image.network(photoList[widget.albumId]['url']),
      tag: tag,
      child: Container(
        width: double.infinity,
        height: double.infinity,
        child: Image.network(
          '${image}',
          fit: BoxFit.cover,
        ),
      ),
    ));
  }
}
