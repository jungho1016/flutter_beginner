import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MainViewModel {
  Future save(TextEditingController heightController,
      TextEditingController weightController) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setDouble('height', double.parse(heightController.text));
    await prefs.setDouble('weight', double.parse(weightController.text));
  }

  Future load(TextEditingController heightController,
      TextEditingController weightController) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final double? height = prefs.getDouble('height');
    final double? weight = prefs.getDouble('weight');

    if (height != null && weight != null) {
      heightController.text = '$height';
      weightController.text = '$weight';
    }
  }
}
