import 'package:flutter/material.dart';
import 'package:flutter_beginner/todo_list/todo.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';

import 'list_sceen.dart';

late final Box<Todo> todos;

Future<void> main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(TodoAdapter());
  todos = await Hive.openBox<Todo>('todolist.db');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: ListScreen(),
    );
  }
}
