import 'package:flutter/material.dart';
import 'package:kid_starter/app/widgets/audio_player.dart';

import 'app/constant.dart';
import 'app/screens/home_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kid Starter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: kBackgroundColor,
        fontFamily: "CabinSketch",
        textTheme: const TextTheme(
          bodyText1: TextStyle(color: kBodyTextColor),
        ),
      ),
      //home: const HomeScreen(),
      home: const MyAudioPlayer(),
    );
  }
}
