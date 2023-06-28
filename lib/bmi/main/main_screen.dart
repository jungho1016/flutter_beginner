import 'package:flutter/material.dart';
import 'package:flutter_beginner/bmi/main/main_view_model.dart';
import 'package:flutter_beginner/bmi/result/result_sceen.dart';
import 'package:flutter_beginner/bmi/result/test.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../route.dart';

class MainScreen extends StatefulWidget {
  MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => MainScreenState();
}

class MainScreenState extends State<MainScreen> {
  final MainViewModel mainViewModel = MainViewModel();
  @override
  void initState() {
    super.initState();
    mainViewModel.load();
  }

  @override
  void dispose() {
    mainViewModel.heightController.dispose();
    mainViewModel.weightController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('비만도 계산기'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: mainViewModel.formkey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              TextFormField(
                controller: mainViewModel.heightController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: '키',
                ),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return '키를 입력하세요';
                  }
                  return null;
                },
              ),
              SizedBox(height: 8),
              TextFormField(
                controller: mainViewModel.weightController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: '몸무게',
                ),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return '몸무게를 입력하세요';
                  }
                  return null;
                },
              ),
              SizedBox(height: 8),
              ElevatedButton(
                onPressed: () async {
                  if (mainViewModel.formkey.currentState?.validate() == false) {
                    return;
                  }
                  context.push(Uri(
                    path: '/detail2',
                    queryParameters: {
                      'height': mainViewModel.heightController.text,
                      'weight': mainViewModel.heightController.text,
                    },
                  ).toString());
                },
                child: Text('결과'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
