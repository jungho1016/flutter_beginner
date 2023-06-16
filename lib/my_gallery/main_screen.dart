import 'dart:async';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class MYGalleryApp extends StatefulWidget {
  const MYGalleryApp({Key? key}) : super(key: key);

  @override
  State<MYGalleryApp> createState() => _MYGalleryAppState();
}

class _MYGalleryAppState extends State<MYGalleryApp> {
  final ImagePicker _picker = ImagePicker();
  List<XFile>? images;
  int currentPage = 0;
  final pageController = PageController();

  @override
  void initState() {
    super.initState();

    loadImages();
  }

  Future<void> loadImages() async {
    images = await _picker.pickMultiImage();

    if (images != null) {
      Timer.periodic(Duration(seconds: 5), (timer) {
        currentPage++;
        if (currentPage > images!.length - 1) {
          currentPage = 0;
        }

        pageController.animateToPage(currentPage,
            duration: Duration(milliseconds: 350), curve: Curves.easeIn);
      });
    }

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('전자액자'),
        ),
        body: images == null
            ? Center(
                child: Text('No data'),
              )
            : PageView(
                controller: pageController,
                children: images!.map((image) {
                  return FutureBuilder<Uint8List>(
                      future: image.readAsBytes(), // 퓨처를 받아서 리턴으로 넘김
                      builder: (context, snapshot) {
                        final data = snapshot.data;
                        if (data == null ||
                            snapshot.connectionState ==
                                ConnectionState.waiting) {
                          return const Center(
                            child: CircularProgressIndicator(),
                          );
                        } else
                          return Image.memory(data, width: double.infinity);
                        // 빌더 : ui를 구성하는 코드
                      });
                }).toList(),
              ));
  }
}
