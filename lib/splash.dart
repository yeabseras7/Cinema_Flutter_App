import 'package:cinema/home.dart';
import 'package:cinema/main.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState(){
    super.initState();
    _navigatetohome();
  }

  _navigatetohome()async{
    await Future.delayed(const Duration(milliseconds: 1500), () {});
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Home()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(child: Image.asset("assets/images/Ticket.png")),
            // Container(
            //   child: Text(
            //     'Splash Screen',
            //     style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold,)
            //     ),
            // ),
          ],
        ),
      ),
    );
  }
}