import 'package:flutter/material.dart';
import 'package:foodpage/view/onboardscreen/onboardscreen.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3)).then((value) {
      Navigator.pushReplacement(context,
       MaterialPageRoute(builder: (context) => Onboardscreen(),));
    },);
    super.initState();
  }
  @override
  
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset("assets/images/800w-iY2pBFWGLgU.webp"),
      ),
    );
  }
}