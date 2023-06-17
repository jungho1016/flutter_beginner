import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sensors_plus/sensors_plus.dart';

class SensorApp extends StatelessWidget {
  const SensorApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //가로모드
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
    ]);
    final centerX = MediaQuery.of(context).size.width / 2 - 50;
    final centerY = MediaQuery.of(context).size.height / 2 - 50;
    return Scaffold(
      body: Stack(
        children: [
          StreamBuilder<AccelerometerEvent>(
              stream: accelerometerEvents,
              builder: (context, snapshot) {
                if (!snapshot.hasData) {
                  return Center(child: CircularProgressIndicator());
                }

                final event = snapshot.data!;
                List<double> accelerometerValues = [event.x, event.y, event.z];
                print(accelerometerValues);

                return Positioned(
                  left: centerX + event.y * 20,
                  top: centerY + event.x * 20,
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.blue,
                    ),
                    // color: Colors.blue, 박스데코레이션 밖에 색상 있으면 에러남
                    width: 100,
                    height: 100,
                  ),
                );
              })
        ],
      ),
    );
  }
}
