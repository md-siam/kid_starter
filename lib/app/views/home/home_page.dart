import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
      appBar: AppBar(title: const Text('Home Page')),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              GestureDetector(
                onTap: () => _getAudio('assets/audio/color/red.mp3'),
                child: Container(
                  height: 100,
                  width: 100,
                  color: Colors.red,
                ),
              ),
              GestureDetector(
                onTap: () => _getAudio('assets/audio/color/blue.mp3'),
                child: Container(
                  height: 100,
                  width: 100,
                  color: Colors.blue,
                ),
              ),
              GestureDetector(
                onTap: () => _getAudio('assets/audio/color/pink.mp3'),
                child: Container(
                  height: 100,
                  width: 100,
                  color: Colors.pink,
                ),
              ),
              GestureDetector(
                onTap: () => _getAudio('assets/audio/color/yellow.mp3'),
                child: Container(
                  height: 100,
                  width: 100,
                  color: Colors.yellow,
                ),
              ),
              GestureDetector(
                onTap: () => _getAudio('assets/audio/color/black.mp3'),
                child: Container(
                  height: 100,
                  width: 100,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
