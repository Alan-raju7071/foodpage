import 'package:flutter/material.dart';
import 'package:foodpage/view/dummy_dp.dart';
import 'package:foodpage/view/global_widgets/recipeeexplain.dart';

class RecipeeDetails extends StatelessWidget {
  const RecipeeDetails({super.key});
  
  get index => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(),
       backgroundColor:Colors.white,
       body: Padding(
         padding: const EdgeInsets.all(10),
         child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: Text("How to make french \ntoast",
              style: TextStyle(
                fontSize: 24,fontWeight: FontWeight.w600
              ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: Recipee_ex(
                
                       
              ),
            )
          ],
         ),
       ),
       );
  }
}

