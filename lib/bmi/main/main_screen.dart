import 'package:flutter/material.dart';
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
  final _formKey = GlobalKey<FormState>();
  final heightController = TextEditingController();
  final weightController = TextEditingController();

  @override
  void initState() {
    super.initState();

    load();
  }

  @override
  void dispose() {
    heightController.dispose();
    weightController.dispose();
    super.dispose();
  }

  Future save() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setDouble('height', double.parse(heightController.text));
    await prefs.setDouble('weight', double.parse(weightController.text));
  }

  Future load() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final double? height = prefs.getDouble('height');
    final double? weight = prefs.getDouble('weight');

    if (height != null && weight != null) {
      heightController.text = '$height';
      weightController.text = '$weight';
    }
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
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              TextFormField(
                controller: heightController,
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
                controller: weightController,
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
                  if (_formKey.currentState?.validate() == false) {
                    return;
                  }
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) => ResultScreen(
                  //       height: double.parse(_heightController.text),
                  //       weight: double.parse(_weightController.text),
                  //     ),
                  //   ),
                  // ); // 되는 코드

                  context.push(Uri(
                    path: '/detail2',
                    queryParameters: {
                      'height': heightController.text,
                      'weight': weightController.text,
                    },
                  ).toString());
                },
                //   context.push(Uri(
                //     path: '/detail2',
                //     queryParameters: {
                //       'height': heightController.text,
                //       'weight': weightController.text,
                //     },
                //   ).toString());
                // }, // 되는 코드
                child: Text('결과'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
