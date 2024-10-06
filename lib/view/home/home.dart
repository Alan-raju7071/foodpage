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
                   SizedBox(height: 14),
                   
                 Row(
                  children: [
                    Text("Recent recipe",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600
                    ),
                    ),
                    Spacer(),
                    Text("See all",
                     style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: ColrConst.primaryColor,
                     ),
                    ),
                    Icon(Icons.arrow_forward)

                  ],
                 ) ,
                 SizedBox(height: 10),
                 SizedBox(
                  height:191 ,
                  
                   child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    
                    itemCount: DummyDp.trendingList.length,
                    itemBuilder: (context, index) => SizedBox(
                    width: 220,
                    height: 191,
                    child: Column(
                      children: [
                        Container(
                          height: 124,
                          width: 124,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(DummyDp.trendingList[index]["imageurl"]))
                          ),
                        ),
                        Text(DummyDp.trendingList[index]["title"],
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600
                        ),
                        ),
                        Text(DummyDp.trendingList[index]["username"],
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w400
                        ),
                        )
                   
                      ],
                    ),
                   )
                                  ,),
                 ),
                   SizedBox(height: 14),
                   
                 Row(
                  children: [
                    Text("Popular creators",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600
                    ),
                    ),
                    Spacer(),
                    Text("See all",
                     style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: ColrConst.primaryColor,
                     ),
                    ),
                    Icon(Icons.arrow_forward)

                  ],
                 ) ,
                 SizedBox(height: 10),
                 SizedBox(
                   height:119 ,
                    
                   child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                     itemCount: DummyDp.trendingList.length,
                    itemBuilder: (context, index) =>  SizedBox(
                    height:119 ,
                    width:75 ,
                    child: Column(
                      children: [
                        CircleAvatar(
                         radius:35 ,
                          
                          backgroundImage: NetworkImage(DummyDp.trendingList[index]["profileimage"],),
                        ),
                        Text(DummyDp.trendingList[index]["username"],
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600
                   
                        ),
                        )
                      ],
                    ),
                   
                   )
                   ,),
                 )
                
               
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
    itemBuilder:(context, index) => recipes( duration:DummyDp.trendingList[index]["duration"],
                        imageurl:DummyDp.trendingList[index]["imageurl"], 
                        profileimage:DummyDp.trendingList[index]["profileimage"],
                         title:DummyDp.trendingList[index]["title"],),
     separatorBuilder: (context, index) => SizedBox(width: 16), 
     itemCount: 10),
 ),
 ],
 ),);

        
     
    
    
    
  }
}

class recipes extends StatelessWidget {
   String imageurl;
    String duration;
  String profileimage;
  String title;
   recipes({
     required this.duration,
    required this.imageurl,
     required this.profileimage,
      required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            SizedBox(
              height: 231,
              width: 150,
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
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage("$imageurl"))
                ),
                child: Column(
                  
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(),
                    Text("$title",
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
                            Text("$duration",
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
                  backgroundImage: NetworkImage("$profileimage"),
                radius: 55,
              ))
          ],
        ),
        
      
      ],
    );
  }
}