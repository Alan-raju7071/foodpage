
 import 'package:flutter/material.dart';




  class  Customvideocard extends StatelessWidget {
  String imageurl;
  String rating;
  String duration;
  String profileimage;
  String title;
  String username;
void Function()? onCardTaped;
  Customvideocard({
    required this.rating,
    required this.duration,
    required this.imageurl,
     required this.profileimage,
      required this.title,
       required this.username,
    super.key,
    this.onCardTaped,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onCardTaped,
      child: SizedBox(
        height: 280,
        width: 300,
        
        child: Column(
          children: [
            Container(
              height: 180,
              
              padding: EdgeInsets.all(10),
            
              
              
              
              
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage("$imageurl")),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                      child: Icon(Icons.bookmark_outline),
                    )
            
                  ],),
                  CircleAvatar(
                    child: Icon(Icons.play_arrow),
                  ),
                  Align(
                    alignment:Alignment.bottomRight,
                    child: Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                       color: Colors.grey.withOpacity(.9),
                      ),
                    
                      
                      
                      child: Text("$duration",
                      textAlign: TextAlign.center,
                       style: TextStyle(
                              color: Colors.white,
                            ),
                      
                      ),
                      
                      height: 28,
                      width: 58,
                    ),
                  ),
                 
                ],
              ),
              
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              
              
              children: [
      
                
                Text("$title"),
                Icon(Icons.more_horiz),
                
              ],
            ),
            Row(
              
              children: [
                CircleAvatar(
                  radius: 16,
                  backgroundImage: NetworkImage("$profileimage"),
                ),
                SizedBox(width:8),
                Text("$username")
              ],
            
            ),
            
           
          
          ],
        
        ),
      ),
    );

  }
}
