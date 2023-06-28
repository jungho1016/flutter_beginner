import 'package:flutter/services.dart';
import 'package:soundpool/soundpool.dart';
import 'package:flutter/foundation.dart';

class XylophoneViewModel {
  Soundpool _pool = Soundpool.fromOptions(options: SoundpoolOptions());

  List<int> soundIds = [];
  ValueNotifier<bool> isLoading = ValueNotifier<bool>(true);

  Future<void> initSoundPool() async {
    List<String> noteNames = [
      'do1',
      're',
      'mi',
      'fa',
      'sol',
      'la',
      'si',
      'do2'
    ];

    for (final noteName in noteNames) {
      final soundData = await rootBundle.load('assets/$noteName.wav');
      final soundId = await _pool.load(soundData);
      soundIds.add(soundId);
    }

    isLoading.value = false;
  }

  void playSound(int soundId) {
    _pool.play(soundId);
  }

  void dispose() {
    _pool.release();
  }
}
