import 'package:flutter/material.dart';

import 'main.dart';
import 'todo.dart';

class CreateSceen extends StatefulWidget {
  const CreateSceen({Key? key}) : super(key: key);

  @override
  State<CreateSceen> createState() => _CreateSceenState();
}

class _CreateSceenState extends State<CreateSceen> {
  final _textController = TextEditingController();

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Todo 작성'),
        actions: [
          IconButton(
            onPressed: () async {
              await todos.add(
                Todo(
                  title: _textController.text,
                  dateTime: DateTime.now().microsecondsSinceEpoch,
                ),
              );
              if (mounted) {
                Navigator.pop(context);
              }
            },
            icon: Icon(
              Icons.done,
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextField(
          controller: _textController,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            hintStyle: TextStyle(color: Colors.grey[800]),
            hintText: '할일을 입력하세요',
            filled: true,
            fillColor: Colors.white70,
          ),
        ),
      ),
    );
  }
}
