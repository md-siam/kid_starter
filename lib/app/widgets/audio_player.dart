import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

import '../constant.dart';

class MyAudioPlayer extends StatefulWidget {
  const MyAudioPlayer({Key? key}) : super(key: key);

  @override
  State<MyAudioPlayer> createState() => _MyAudioPlayerState();
}

class _MyAudioPlayerState extends State<MyAudioPlayer> {
  final _audioPlayer = AudioPlayer();

  @override
  void dispose() {
    _audioPlayer.dispose();
    super.dispose();
  }

  void _getAudio(String assetPath) async {
    try {
      await _audioPlayer.setAsset(assetPath);
      _audioPlayer.play();
    } catch (e) {
      debugPrint("Error loading audio source: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Audio Player Test')),
      body: Center(
        child: SingleChildScrollView(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  GestureDetector(
                    child: Container(
                      height: 100,
                      width: 100,
                      color: Colors.red,
                    ),
                    onTap: () => _getAudio('assets/audio/color/red.mp3'),
                  ),
                  GestureDetector(
                    child: Container(
                      height: 100,
                      width: 100,
                      color: Colors.blue,
                    ),
                    onTap: () => _getAudio('assets/audio/color/blue.mp3'),
                  ),
                  GestureDetector(
                    child: Container(
                      height: 100,
                      width: 100,
                      color: Colors.pink,
                    ),
                    onTap: () => _getAudio('assets/audio/color/pink.mp3'),
                  ),
                  GestureDetector(
                    child: Container(
                      height: 100,
                      width: 100,
                      color: Colors.yellow,
                    ),
                    onTap: () => _getAudio('assets/audio/color/yellow.mp3'),
                  ),
                  GestureDetector(
                    child: Container(
                      height: 100,
                      width: 100,
                      color: Colors.black,
                    ),
                    onTap: () => _getAudio('assets/audio/color/black.mp3'),
                  ),
                ],
              ),

              /// `Numeric`
              Column(
                children: [
                  GestureDetector(
                    child: Container(
                      alignment: Alignment.center,
                      height: 100,
                      width: 100,
                      color: Colors.grey[300],
                      child: const Text('1', style: kTitleTextStyle),
                    ),
                    onTap: () => _getAudio('assets/audio/numeric_en/kid-1.mp3'),
                  ),
                  GestureDetector(
                    child: Container(
                      alignment: Alignment.center,
                      height: 100,
                      width: 100,
                      color: Colors.grey[300],
                      child: const Text('2', style: kTitleTextStyle),
                    ),
                    onTap: () => _getAudio('assets/audio/numeric_en/kid-2.mp3'),
                  ),
                  GestureDetector(
                    child: Container(
                      alignment: Alignment.center,
                      height: 100,
                      width: 100,
                      color: Colors.grey[300],
                      child: const Text('3', style: kTitleTextStyle),
                    ),
                    onTap: () => _getAudio('assets/audio/numeric_en/kid-3.mp3'),
                  ),
                  GestureDetector(
                    child: Container(
                      alignment: Alignment.center,
                      height: 100,
                      width: 100,
                      color: Colors.grey[300],
                      child: const Text('4', style: kTitleTextStyle),
                    ),
                    onTap: () => _getAudio('assets/audio/numeric_en/kid-4.mp3'),
                  ),
                  GestureDetector(
                    child: Container(
                      alignment: Alignment.center,
                      height: 100,
                      width: 100,
                      color: Colors.grey[300],
                      child: const Text('5', style: kTitleTextStyle),
                    ),
                    onTap: () => _getAudio('assets/audio/numeric_en/kid-5.mp3'),
                  ),
                ],
              ),

              /// `Alphabets`
              Column(
                children: [
                  GestureDetector(
                    child: Container(
                      alignment: Alignment.center,
                      height: 100,
                      width: 100,
                      color: Colors.purple[100],
                      child: const Text('A', style: kTitleTextStyle),
                    ),
                    onTap: () =>
                        _getAudio('assets/audio/alphabet_en/kid-a.mp3'),
                  ),
                  GestureDetector(
                    child: Container(
                      alignment: Alignment.center,
                      height: 100,
                      width: 100,
                      color: Colors.purple[100],
                      child: const Text('B', style: kTitleTextStyle),
                    ),
                    onTap: () =>
                        _getAudio('assets/audio/alphabet_en/kid-b.mp3'),
                  ),
                  GestureDetector(
                    child: Container(
                      alignment: Alignment.center,
                      height: 100,
                      width: 100,
                      color: Colors.purple[100],
                      child: const Text('C', style: kTitleTextStyle),
                    ),
                    onTap: () =>
                        _getAudio('assets/audio/alphabet_en/kid-c.mp3'),
                  ),
                  GestureDetector(
                    child: Container(
                      alignment: Alignment.center,
                      height: 100,
                      width: 100,
                      color: Colors.purple[100],
                      child: const Text('D', style: kTitleTextStyle),
                    ),
                    onTap: () =>
                        _getAudio('assets/audio/alphabet_en/kid-d.mp3'),
                  ),
                  GestureDetector(
                    child: Container(
                      alignment: Alignment.center,
                      height: 100,
                      width: 100,
                      color: Colors.purple[100],
                      child: const Text('E', style: kTitleTextStyle),
                    ),
                    onTap: () =>
                        _getAudio('assets/audio/alphabet_en/kid-e.mp3'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
