import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

import '../constant.dart';
import '../controllers/alphabet_en_controller.dart';
import '../widgets/page_header.dart';
import '../widgets/tile_card.dart';

class AlphabetEnScreen extends StatefulWidget {
  final String title;
  final Color primaryColor;
  final Color secondaryColor;

  const AlphabetEnScreen({
    Key? key,
    required this.title,
    required this.primaryColor,
    required this.secondaryColor,
  }) : super(key: key);

  @override
  State<AlphabetEnScreen> createState() => _AlphabetEnScreenState();
}

class _AlphabetEnScreenState extends State<AlphabetEnScreen> {
  final _audioPlayer = AudioPlayer();

  @override
  void dispose() {
    _audioPlayer.dispose();
    super.dispose();
  }

  void _playAudio(String assetPath) async {
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
      body: Column(
        children: [
          PageHeader(
            title: widget.title,
            primaryColor: widget.primaryColor,
            secondaryColor: widget.secondaryColor,
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 20.0,
              ),
              itemCount: alphabetEnList.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: index % 2 == 0
                      ? const EdgeInsets.only(bottom: 20, left: 20)
                      : const EdgeInsets.only(bottom: 20, right: 20),
                  child: TileCard(
                    title: alphabetEnList[index].text,
                    textColor: getIndexColor(index),
                    onTap: () => _playAudio(alphabetEnList[index].audio),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
