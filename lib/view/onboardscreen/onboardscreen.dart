

import 'package:flutter/material.dart';
import 'package:foodpage/bottomnavigation/bottomnavigation.dart';
import 'package:foodpage/utilis/const/colr_const.dart';
import 'package:foodpage/utilis/const/image_const.dart';


class Onboardscreen extends StatelessWidget {
  const Onboardscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        
        children: [
          Container(

            
            decoration: BoxDecoration(
              
              image: DecorationImage(
                fit: BoxFit.cover,
                image:AssetImage(ImageConst.onboardscreen))
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 64,vertical: 60),
              decoration: BoxDecoration(
                gradient: LinearGradient(colors:[Colors.transparent,Colors.black],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
            
                )
              ),
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  
                  children: [
                    Text("Let's \ncooking",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 56,
                      fontWeight: FontWeight.w500,
                
                    ),
                    ),
                    SizedBox(height: 20),
                    Text("Find best recipes for cooking",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                      color: Colors.white,
                    ),),
                    SizedBox(height: 40),
                    
                    InkWell(
                      onTap: () {
                        Navigator.push(context,
                        MaterialPageRoute(builder: (context) =>Bottomnavigation())
                        );
                      },
                      child: Container(
                        width: 250,
                        
                        padding: EdgeInsets.symmetric(horizontal: 32,vertical: 16),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: ColrConst.primaryColor,
                        ),
                      
                        child:
                         Row(
                          
                          
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("start cooking",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                            ),
                            SizedBox(width: 20),
                            Icon(Icons.arrow_forward,color: Colors.white),
                          ],
                        ),
                        ),
                    ),
            
                      
                    
                    
                
                  ],
                ),
              ),
            
            ),
          )
         
        ],
      ),
      
      
      
    );
  }
}