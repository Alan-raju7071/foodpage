import 'package:flutter/material.dart';
import 'package:foodpage/utilis/const/colr_const.dart';
import 'package:foodpage/view/dummy_dp.dart';
import 'package:foodpage/view/global_widgets/custom_listtile.dart';



class RecipeeDetails extends StatelessWidget {
   RecipeeDetails({super.key,
   
   required this.title,
   required this.duration,
   required this.profileimage,
   required this.username,
   required this.rating,
   required this.imageurl,
   required this.photo,
   required this.image
  
  });
  String photo;
  String title;
   String duration;
    String profileimage;
     String username;
      String rating;
       String imageurl;
       String image;
  
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
              child: Text(photo,
              style: TextStyle(
                fontSize: 24,fontWeight: FontWeight.w600
              ),
              ),
            ),





            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12),
              child:SizedBox(
        
          height: 294,
          width: 335,
    
      
      child: Column(
        children: [
        Container(
          
          height: 200,
        
          decoration: BoxDecoration(
            
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              fit: BoxFit.cover,
              
              image: NetworkImage(image))
    
          ),
          child: Center(child: Icon(Icons.play_arrow_outlined)),
        ),
        Row(
          children: [
            Icon(Icons.star,color: Colors.yellow,),
            Text(rating,style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400
            ),),
            SizedBox(width: 7,),
            Text("(300 Reviews)",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
            )
          ],
        ),
        Row(
          children: [
            CircleAvatar(
             backgroundImage: NetworkImage(profileimage),
             radius: 20.5,
            ),
            SizedBox(width: 10),
            Row(children: [
            Column(
              children: [
                Text(username,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600
                ),
                ),
           
            Row(
              children: [
                Icon(Icons.location_on),
             
            Text("Bali, Indonesia",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400
            ),
            )
             ],
            ),
               ],
            ),
            ]),
            Spacer(),
            Container(
              width: 77,
              height: 36,
              decoration: BoxDecoration(
                color: ColrConst.primaryColor,
                borderRadius: BorderRadius.circular(10)
        
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal:16,vertical: 8 ),
                child: Text("Follow",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600
                ),
                ),
              ),
            )
          ],
        )
      
      ],),
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

