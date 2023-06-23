import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(minimumSize: Size(5, 5)),
                child: Icon(
                  Icons.token_outlined,
                  size: 200,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(16.0),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Icon(
                    Icons.token_outlined,
                    size: 200,
                  ),
                ),
              ),
              ElevatedButton(
                child: const Text('Submit'),
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.fromLTRB(20, 10, 20, 10)),
              ),
              ElevatedButton(
                child: const Text('show'),
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    minimumSize: const Size(11, 22),
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 0)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
