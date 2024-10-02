import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomRecipeeCard extends StatelessWidget {
    String imageurl;
  String rating;
  
  
  String title;
  
  
   
   CustomRecipeeCard({
     required this.rating,
    
    required this.imageurl,
     
      required this.title,
       
    super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      
      child:  Container(
        padding: EdgeInsets.all(10),
        
         height: 150,
         
         
         decoration: BoxDecoration(
          
          borderRadius: BorderRadius.circular(10),
          
         image: DecorationImage(
           fit: BoxFit.cover,
           image: NetworkImage("$imageurl"))
         ),
         child: Column(
          children: [
               Row(children: [
                  Container(
                    
                    
                    
                    
                    height:28 ,
                    width:58 ,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey.withOpacity(.9),
                      
                    ),
                    child:Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      
                      children: [
                    
                    
                     Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.star,color: Colors.white),
                        Text("$rating",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                        ),
                      ],
                      
                    ),
                      ],
                    ),
                    
                  ),
                  Spacer(),
                  CircleAvatar(
                    radius: 14,
                    backgroundColor: Colors.white,
                    child: Icon(Icons.more_horiz),
                  )
          
          
          ],
         ),
         Spacer(),
      
      Text("$title",
      style: TextStyle(
        color: Colors.white,
        fontSize: 16,
        fontWeight: FontWeight.w600
      ),
      ),
      Text("12 Ingredients | 40 min",
      style: TextStyle(
         color: Colors.white,
        fontSize: 12,
        fontWeight: FontWeight.normal

      ),
      )
        
        
          ]
      ),
      ),
    );
  }
}