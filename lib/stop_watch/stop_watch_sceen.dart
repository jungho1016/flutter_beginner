import 'dart:async';

import 'package:flutter/material.dart';

class StopWatchSceen extends StatefulWidget {
  const StopWatchSceen({Key? key}) : super(key: key);

  @override
  State<StopWatchSceen> createState() => _StopWatchSceenState();
}

class _StopWatchSceenState extends State<StopWatchSceen> {
  Timer? _timer;
  int _time = 0;
  bool _isRunnning = false;
  final List<String> _lapTimes = [];

  void _clickButton() {
    _isRunnning = !_isRunnning;

    if (_isRunnning) {
      _start();
    } else {
      _pause();
    }
  }

  void _start() {
    _timer = Timer.periodic(Duration(milliseconds: 10), (timer) {
      setState(() {
        _time++;
      });
    });
  }

  void _pause() {
    _timer?.cancel();
  }

  void _reset() {
    _isRunnning = false;
    _timer?.cancel();
    _lapTimes.clear();
    _time = 0;
  }

  void _recordLapTime(String time) {
    _lapTimes.insert(0, '${_lapTimes.length + 1}등 $time');
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    int sec = _time ~/ 100;
    String hundredth = '${_time % 100}.'.padLeft(2, '0');
    return Scaffold(
      appBar: AppBar(
        title: const Text('스톱워치'),
      ),
      body: Column(
        children: [
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text('$sec', style: TextStyle(fontSize: 50)),
              Text('$hundredth'),
            ],
          ),
          SizedBox(
            width: 100,
            height: 200,
            child: ListView(
                children: _lapTimes
                    .map((time) => Center(child: Text(time)))
                    .toList()),
          ),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FloatingActionButton(
                backgroundColor: Colors.orange,
                onPressed: () {
                  setState(() {
                    _reset();
                  });
                },
                child: Icon(Icons.refresh),
              ),
              FloatingActionButton(
                onPressed: () {
                  setState(() {
                    _clickButton();
                  });
                },
                child: _isRunnning ? Icon(Icons.pause) : Icon(Icons.play_arrow),
              ),
              FloatingActionButton(
                backgroundColor: Colors.green,
                onPressed: () {
                  setState(() {
                    _recordLapTime('$sec.$hundredth');
                  });
                },
                child: Icon(Icons.add),
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
