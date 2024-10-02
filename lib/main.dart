import 'package:flutter/material.dart';
import 'package:foodpage/view/home/home.dart';
import 'package:foodpage/view/splash/splash.dart';













class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splash()
    );
  }
}
void main(){
  runApp(Myapp());
}