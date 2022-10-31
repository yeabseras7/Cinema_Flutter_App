import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:cinema/home.dart';
import 'package:cinema/splash.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AnimatedSplashScreen(splash: 
      Image.asset("assets/images/Ticket.png"),
      duration: 3000,
      splashTransition: SplashTransition.scaleTransition,
      backgroundColor: Colors.black,
      
      // Center(
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: [
      //       Container(child: Image.asset("assets/images/Ticket.png")),
      //       // Container(
      //       //   child: Text(
      //       //     'Splash Screen',
      //       //     style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold,)
      //       //     ),
      //       // ),
      //     ],
      //   ),
      // ), 
      nextScreen: const Home()),
    );
  }
}

