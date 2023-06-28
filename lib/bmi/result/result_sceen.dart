import 'package:flutter/material.dart';

import 'result_view_model.dart';

class ResultScreen extends StatelessWidget {
  final double height;
  final double weight;
  final ResultViewModel viewModel;

  ResultScreen({
    Key? key,
    required this.height,
    required this.weight,
  })  : viewModel = ResultViewModel(height: height, weight: weight),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('결과'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              viewModel.calculateBmi(),
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
              ),
            ),
            Icon(
              viewModel.getBmiIcon(),
              color: Colors.red,
              size: 100,
            ),
          ],
        ),
      ),
    );
  }
}
