import 'package:flutter/material.dart';
import 'package:foodpage/view/dummy_dp.dart';
import 'package:foodpage/view/global_widgets/custom_listtile.dart';

import 'package:foodpage/view/global_widgets/recipeeexplain.dart';

class RecipeeDetails extends StatelessWidget {
   RecipeeDetails({super.key,
   required this.title,
   required this.duration,
   required this.profileimage,
   required this.username,
   required this.rating,
   required this.imageurl,
  
  });
  String title;
   String duration;
    String profileimage;
     String username;
      String rating;
       String imageurl;
  
  get index => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(),
       backgroundColor:Colors.white,
       body: Padding(
         padding: const EdgeInsets.all(20),
         child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: Text("&title",
              style: TextStyle(
                fontSize: 24,fontWeight: FontWeight.w600
              ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: Recipee_ex(
               
                
                       
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Row(
                children: [
                  Text("Ingredients",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600
                  ),
                  ),
                  Spacer(),
                  Text("5 items",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400
              
                  ),
                  )
                ],
              ),
            ),
           Expanded(
             child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) =>   Custom_list(
                havearrow: false,
              imageurl: DummyDp.ingredientList[index]["imageurl"],
              duration: DummyDp.ingredientList[index]["duration"],
              title:DummyDp.ingredientList[index]["title"] ,
             )),
           ),
         
         
         
         
         
         
         
         
          
         
          ],
         ),
       ),
       );
  }
}

