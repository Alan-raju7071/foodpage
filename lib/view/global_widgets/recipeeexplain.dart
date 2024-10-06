import 'package:flutter/material.dart';
import 'package:foodpage/utilis/const/colr_const.dart';
import 'package:foodpage/view/dummy_dp.dart';

class Recipee_ex extends StatefulWidget {
 
    Recipee_ex({
     
    super.key,
  });

  @override
  State<Recipee_ex> createState() => _Recipee_exState();
}

class _Recipee_exState extends State<Recipee_ex> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        
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
              
              image: NetworkImage(DummyDp.recipeeList[0]["imageurl"]))
    
          ),
          child: Center(child: Icon(Icons.play_arrow_outlined)),
        ),
        Row(
          children: [
            Icon(Icons.star,color: Colors.yellow,),
            Text(DummyDp.recipeeList[0]["rating"],style: TextStyle(
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
             backgroundImage: NetworkImage(DummyDp.recipeeList[0]["profileimage"]),
             radius: 20.5,
            ),
            SizedBox(width: 10),
            Row(children: [
            Column(
              children: [
                Text(DummyDp.recipeeList[0]["username"],
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
    );
  }
}