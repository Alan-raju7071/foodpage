import 'package:flutter/material.dart';
import 'package:foodpage/bottomnavigation/bottomnavigation.dart';
import 'package:foodpage/view/onboardscreen/onboardscreen.dart';














class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Onboardscreen()
    );
  }
}
void main(){
  runApp(Myapp());
}