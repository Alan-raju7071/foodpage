import 'package:flutter/material.dart';

class CustomRecipeeCard extends StatelessWidget {
  const CustomRecipeeCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      
      child:  Container(
        
         height: 150,
         
         
         decoration: BoxDecoration(
          
          borderRadius: BorderRadius.circular(10),
          
         image: DecorationImage(
           fit: BoxFit.cover,
           image: NetworkImage("https://images.pexels.com/photos/1128678/pexels-photo-1128678.jpeg?auto=compress&cs=tinysrgb&w=600"))
         ),
      
      
        
        
       
      ),
    );
  }
}