import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:just_audio/just_audio.dart';

import '../constant.dart';

class CategoryCard extends StatefulWidget {
  final String title;
  final Color primaryColor;
  final Color secondaryColor;
  final Widget screen;

  const CategoryCard({
    Key? key,
    required this.title,
    required this.primaryColor,
    required this.secondaryColor,
    required this.screen,
  }) : super(key: key);

  @override
  State<CategoryCard> createState() => _CategoryCardState();
}

class _CategoryCardState extends State<CategoryCard> {
  final _audioPlayer = AudioPlayer();

  @override
  void dispose() {
    _audioPlayer.dispose();
    super.dispose();
  }

  void _pushAudio() async {
    try {
      await _audioPlayer.setAsset(
        'assets/audio/screen_transition/push-page-forward-single-chime.wav',
      );
      _audioPlayer.play();
    } catch (e) {
      debugPrint("Error loading Navigator.push audio: $e");
    }
  }

  void _navigate(BuildContext context, Widget screen) {
    _pushAudio();
    HapticFeedback.lightImpact();
    Navigator.push(
      context,
      CupertinoPageRoute(
        builder: (_) {
          return screen;
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 4),
            blurRadius: 10,
            color: Colors.grey[900]!.withOpacity(0.2),
          ),
        ],
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [widget.primaryColor, widget.secondaryColor],
        ),
      ),
      height: 180.0,
      child: Material(
        type: MaterialType.transparency,
        borderRadius: BorderRadius.circular(20),
        clipBehavior: Clip.hardEdge,
        child: InkWell(
          onTap: () => _navigate(context, widget.screen),
          child: Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Text(
              widget.title,
              style: kHeadingTextStyle.copyWith(
                fontSize: 90.0,
                letterSpacing: 4.0,
              ),
              softWrap: false,
            ),
          ),
        ),
      ),
    );
  }
}
