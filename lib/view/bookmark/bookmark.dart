import 'package:flutter/material.dart';
import 'package:foodpage/utilis/const/colr_const.dart';
import 'package:foodpage/view/dummy_dp.dart';
import 'package:foodpage/view/global_widgets/custom_video_card.dart';
import 'package:foodpage/view/recipee_details/recipee_details.dart';


class Bookmark extends StatelessWidget {
  const Bookmark({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Saved recipes",
          style: TextStyle(
            color: Colors.black,fontWeight: FontWeight.w400
          ),
          ),
          bottom: TabBar(
            padding: EdgeInsets.symmetric(horizontal: 20),
            
            indicatorSize: TabBarIndicatorSize.tab,
            labelColor: Colors.white,
            unselectedLabelColor: ColrConst.primaryColor,
            dividerHeight: 0,
      
            indicator: BoxDecoration(
              color: ColrConst.primaryColor,
              borderRadius: BorderRadius.circular(10)
            ),
            tabs: [
             Tab(child: Padding(
               padding: const EdgeInsets.all(8.0),
               child: Text("Salad"),
             ),),
             Tab(child: Padding(
               padding: const EdgeInsets.all(8.0),
               child: Text("Breakfast"),
             ),),
      
      
          ])
          ,
        ),
        body:
        ListView.separated(
          
                      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 24),
                      
                  
                      itemBuilder: (context, index) => Customvideocard(
                        onCardTaped: () {
                          Navigator.push(context,
                           MaterialPageRoute(builder: (context) => RecipeeDetails(),));
                        },
                      
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
            
      
      ),
    );
  }
}