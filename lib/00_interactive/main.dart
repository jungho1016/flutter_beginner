import 'package:flutter/material.dart';

class MyButton extends StatefulWidget {
  @override
  State<MyButton> createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  late VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text('Click Me'),
    );
  }
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  void _handleButtonClick() {
    print('Button clicked!');
    // Perform any desired actions here
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Callback Example',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Callback Example'),
        ),
        body: Center(
          child: Text('g2')
          ),
        ),
      ),
    );
  }
}
