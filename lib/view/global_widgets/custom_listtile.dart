import 'package:flutter/material.dart';

class Custom_list extends StatelessWidget {
  String imageurl;
  String title;
  String duration;

    Custom_list({
    required this.imageurl,
    required this.title,
    required this.duration,
   
    
    super.key,
      this.havearrow=false,
  });
  final bool havearrow;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        width: 335,
        height:76 ,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color(0XFFF1F1F1)
      
      
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 12),
              child: Container(
                padding: EdgeInsets.all(10),
                height: 52,
                width: 52,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                   image: DecorationImage(image: NetworkImage("$imageurl"))
              
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 25),
              child: Text("$title",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600
              
              ),
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 28),
              child: Text("$duration",
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 14
              
              ),),
            ),
            SizedBox(width: 8),
           havearrow? Padding(
             padding: const EdgeInsets.only(left: 8),
             child: Icon(Icons.arrow_forward_outlined),
           ):SizedBox(),
               
          ],
        ),
      ),
    );
  }
}

