import 'package:flutter/material.dart';

class ResultViewModel {
  final double height;
  final double weight;

  ResultViewModel({
    required this.height,
    required this.weight,
  });

  String calculateBmi() {
    double bmi = weight / ((height / 100.0) * (height / 100.0));
    String result = '저체중';
    if (bmi >= 35) {
      result = '고도 비만';
    } else if (bmi >= 30) {
      result = '2단계 비만';
    } else if (bmi >= 25) {
      result = '1단계 비만';
    } else if (bmi >= 23) {
      result = '과체중';
    } else if (bmi >= 18.5) {
      result = '정상';
    }
    print(result);
    return result;
  }

  IconData getBmiIcon() {
    double bmi = weight / ((height / 100.0) * (height / 100.0));
    IconData iconData = Icons.sentiment_dissatisfied;
    if (bmi >= 30) {
      iconData = Icons.sentiment_dissatisfied;
    } else if (bmi >= 23) {
      iconData = Icons.sentiment_very_dissatisfied;
    } else if (bmi >= 18.5) {
      iconData = Icons.sentiment_satisfied;
    }
    print(height);
    print(weight);
    print(bmi);
    return iconData;
  }
}
