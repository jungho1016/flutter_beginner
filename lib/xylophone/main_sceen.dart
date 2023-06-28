import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:soundpool/soundpool.dart';

import 'main_view_model.dart';

class XylophoneApp extends StatefulWidget {
  const XylophoneApp({Key? key}) : super(key: key);

  @override
  State<XylophoneApp> createState() => _XylophoneAppState();
}

class _XylophoneAppState extends State<XylophoneApp> {
  XylophoneViewModel viewModel = XylophoneViewModel();

  @override
  void initState() {
    super.initState();
    viewModel.initSoundPool().then((_) {
      setState(() {}); // Trigger a rebuild after the sound loading is complete
    });
  }

  @override
  void dispose() {
    viewModel.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeLeft]);
    return Scaffold(
      appBar: AppBar(
        title: Text('실로폰'),
      ),
      body: ValueListenableBuilder<bool>(
        valueListenable: viewModel.isLoading,
        builder: (context, loading, _) {
          return loading
              ? Center(child: CircularProgressIndicator())
              : Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 8.0, horizontal: 16.0),
                      child: gunban('도', Colors.red, viewModel.soundIds[0]),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 8.0, horizontal: 12.0),
                      child: gunban('레', Colors.orange, viewModel.soundIds[1]),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 8.0, horizontal: 8.0),
                      child: gunban('미', Colors.yellow, viewModel.soundIds[2]),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 8.0, horizontal: 4.0),
                      child: gunban('파', Colors.green, viewModel.soundIds[3]),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 8.0, horizontal: 2.0),
                      child: gunban('솔', Colors.blue, viewModel.soundIds[4]),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 8.0, horizontal: 2.0),
                      child: gunban('라', Colors.indigo, viewModel.soundIds[5]),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 8.0, horizontal: 4.0),
                      child: gunban('시', Colors.purple, viewModel.soundIds[6]),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 8.0, horizontal: 8.0),
                      child:
                          gunban('도', Colors.deepPurple, viewModel.soundIds[7]),
                    ),
                  ],
                );
        },
      ),
    );
  }

  Widget gunban(String text, Color color, int soundId) {
    return GestureDetector(
      onTap: () {
        viewModel.playSound(soundId);
      },
      child: Container(
        width: 50,
        height: double.infinity,
        color: color,
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
