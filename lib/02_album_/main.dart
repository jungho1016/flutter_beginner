import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_beginner/02_album/ui/main/main_sceen.dart';

import 'ui/detail/detail_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainScreen(),
    );
  }
}
