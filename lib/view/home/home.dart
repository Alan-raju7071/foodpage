import 'package:flutter/material.dart';
import 'package:foodpage/utilis/const/colr_const.dart';
import 'package:foodpage/view/dummy_dp.dart';
import 'package:foodpage/view/global_widgets/custom_video_card.dart';



class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      body: 
       SafeArea(
         child: Padding(
          padding: const EdgeInsets.all(10),
          child: SingleChildScrollView(
            child: Column(
              
              
              
              crossAxisAlignment: CrossAxisAlignment.start,
              
              children: [
                
                  
                
                  
                   Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 22,vertical: 20),
                     child: Text("Find the best recips\nfor cooking",
                                   style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                                   ),),
                   ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 8),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Search recipes",
                        prefix: Icon(Icons.search,),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.black),
                          
                    
                        ),
                        focusedBorder: OutlineInputBorder(
                           borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.red),
                    
                        )
                      ),
                    ),
                  ),
                   Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20,vertical:8 ),
                    child: Row(
                      children: [
                        Text("Trending now 🔥",
                        style: TextStyle(
                          fontSize: 18,
                        ),),
                        Spacer(),
                        Text("See All",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.red,
                        ),),
                        Icon(Icons.arrow_forward,
                        color: Colors.red),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 240,
                    
                    
                    child: ListView.separated(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => Customvideocard(
                        rating:DummyDp.trendingList[index]["rating"],
                        duration:DummyDp.trendingList[index]["duration"],
                        imageurl:DummyDp.trendingList[index]["imageurl"], 
                        profileimage:DummyDp.trendingList[index]["profileimage"],
                         title:DummyDp.trendingList[index]["title"],
                          username:DummyDp.trendingList[index]["username"],
                            
                      ),
                     separatorBuilder:(context, index) => SizedBox(
                      width: 16,
                     ),
                      itemCount:10),
                  ),
                  SizedBox(height: 10),
                   Popularcategory(),
                   
                  
              
             ],
            ),
          ),
               ),
       ),

    );
  }
}

 
class Popularcategory extends StatelessWidget {
  const Popularcategory({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length:5, child: 
    Column(
      children: [
        Text(
          
          "Popular Category",
        style: TextStyle(
          
        
        ),
        ),
        SizedBox(height: 10),
          TabBar(
            dividerHeight: 0,
            isScrollable: true,
            tabAlignment: TabAlignment.center,
            indicatorSize: TabBarIndicatorSize.tab,
            
            indicator: BoxDecoration(
              color: ColrConst.primaryColor,
              borderRadius: BorderRadius.circular(10)
            ),
            tabs:[
              
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Tab(text: "salad"),
            ),
             Padding(
               padding: const EdgeInsets.symmetric(horizontal: 8),
               child: Tab(text: "breakfast"),
             ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Tab(text: "appertizer"),
              ),
               Padding(
                 padding: EdgeInsets.symmetric(horizontal: 8),
                 child: Tab(text: "noodles"),
               ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Tab(text: "lunch"),
                ),
            
    
    ]),
   
   
    SizedBox(height: 10),
    
 SizedBox(
  height: 231,
   child: ListView.separated(
    padding: EdgeInsets.symmetric(horizontal: 20),
    scrollDirection: Axis.horizontal,
    itemBuilder:(context, index) => recipes(),
     separatorBuilder: (context, index) => SizedBox(width: 16), 
     itemCount: 10),
 ),],
 ),);

        
     
    
    
    
  }
}

class recipes extends StatelessWidget {
  const recipes({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Expanded(
              child: SizedBox(
                height: 231,
                width: 150,
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
        
              child:Container(
                padding: EdgeInsets.all(12),
                
                height: 176,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey,
                ),
                child: Column(
                  
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(),
                    Text("Pepper sweetcorn",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w600
                    ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
          
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
        
                          children: [
                            Text("Time",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontSize: 12,
                              
                              color: Colors.black,
                            ),),
                            Text("20 mins",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: Colors.black
                            ),
                            ),
                           
                          ],
                        ),
                                       CircleAvatar(
                              radius: 12,
        
                              backgroundImage: NetworkImage(""),
                              child: Icon(Icons.bookmark_border,size: 16),
                            ),
        
                      ],
                    )
                    
                  ],
                ),
              ) 
              ),
              Positioned(
                left: 0,
                right: 0,
                child: CircleAvatar(
                radius: 55,
              ))
          ],
        ),
      ],
    );
  }
}