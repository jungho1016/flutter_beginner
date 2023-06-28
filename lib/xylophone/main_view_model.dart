import 'package:flutter/services.dart';
import 'package:soundpool/soundpool.dart';

class XylophoneViewModel {
  final Soundpool _pool;

  XylophoneViewModel(this._pool);

  Future<List<int>> loadSoundIds() async {
    final List<int> soundIds = [];
    final List<String> noteNames = [
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

    return soundIds;
  }

  void playSound(int soundId) {
    _pool.play(soundId);
  }
}
