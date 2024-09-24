import 'package:flutter/material.dart';
import 'package:foodpage/view/myprofile/myprifile.dart';
import 'package:foodpage/view/onboardscreen/onboardscreen.dart';
















class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Myprifile()
    );
  }
}
void main(){
  runApp(Myapp());
}