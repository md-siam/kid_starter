import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'app/constant.dart';
import 'app/splash_screen.dart';

void main() {
  // For disabling landscape view
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown],
  );
  runApp(const MyApp());
}

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
      home: const SplashScreen(),
      //home: const HomeScreen(),
      //home: const MyAudioPlayer(),
    );
  }
}
