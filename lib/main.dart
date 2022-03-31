import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:hearme_app/home/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimatedSplashScreen(
          duration: 2000,
          splash: Text("Hear Me"),
          nextScreen: HomeScreen(),
          splashTransition: SplashTransition.fadeTransition,
          // pageTransitionType: PageTransitionType.scale,
          backgroundColor: Colors.blue),
    );
  }
}

