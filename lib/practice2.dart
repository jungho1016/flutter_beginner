import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<List<int>> nestedList = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9],
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9],
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9],
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Nested ListView Example'),
        ),
        body: ListView.builder(
          itemCount: nestedList.length,
          itemBuilder: (context, index) {
            return ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: nestedList[index].length,
              itemBuilder: (context, nestedIndex) {
                return ListTile(
                  title: Text('Item ${nestedList[index][nestedIndex]}'),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
