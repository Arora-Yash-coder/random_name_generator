import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';

import 'homepage.dart';

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
      title: 'Random Name Generator',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: AnimatedSplashScreen(
          splash: const Center(
              child: Padding(
            padding: EdgeInsets.only(bottom: 150),
            child: Icon(
              Icons.refresh_rounded,
              color: Colors.redAccent,
              size: 90,
            ),
          )),
          duration: 1500,
          nextScreen: const MyHomePage(
            title: 'Random Name Generator',
          )),
      // home: const MyHomePage(title: 'Random Name Generator'),
    );
  }
}
