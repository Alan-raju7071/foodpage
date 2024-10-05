import 'package:flutter/material.dart';
import 'package:foodpage/view/recipee_details/recipee_details.dart';















class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RecipeeDetails()
    );
  }
}
void main(){
  runApp(Myapp());
}