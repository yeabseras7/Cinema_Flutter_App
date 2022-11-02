import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:cinema/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AnimatedSplashScreen(
          splash: Image.asset("assets/images/Ticket.png"),
          duration: 1500,
          splashTransition: SplashTransition.scaleTransition,
          backgroundColor: Colors.black,
          nextScreen: const Home()),
    );
  }
}
