import 'package:flutter/material.dart';
import 'package:foodpage/view/dummy_dp.dart';
import 'package:foodpage/view/home/home.dart';

class Bookmark extends StatelessWidget {
  const Bookmark({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:ListView.separated(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                
                    itemBuilder: (context, index) => customvideocard(
                    
                      rating:DummyDp.trendingList[index]["rating"],
                      duration:DummyDp.trendingList[index]["duration"],
                      imageurl:DummyDp.trendingList[index]["imageurl"], 
                      profileimage:DummyDp.trendingList[index]["profileimage"],
                       title:DummyDp.trendingList[index]["title"],
                        username:DummyDp.trendingList[index]["username"],
          
                    ),
                   separatorBuilder:(context, index) => SizedBox(
                    height: 16,
                   ),
                    itemCount:DummyDp.trendingList.length-1),
          

    );
  }
}