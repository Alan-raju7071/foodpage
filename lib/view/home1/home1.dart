import 'package:flutter/material.dart';

class Home1 extends StatefulWidget {
  const Home1({super.key});

  @override
  State<Home1> createState() => _Home1State();
}

class _Home1State extends State<Home1> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3)).then((value) {

      
    },);
     
       
     
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/800w-iY2pBFWGLgU.webp"),
            
            
          ),
        ),
      ),
    );
  }
}