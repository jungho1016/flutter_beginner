import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_beginner/00_interactive/main.dart';

import 'screen/image_search_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ImageSearchScreen(),
    );
  }
}
