import 'package:flutter/material.dart';
import 'package:foodpage/utilis/const/colr_const.dart';
import 'package:foodpage/view/dummy_dp.dart';



class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      body: 
       Padding(
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
                  padding: const EdgeInsets.symmetric(horizontal: 20,vertical:8 ),
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
                  height: 250,
                  child: ListView.separated(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => customvideocard(
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
                 popularcategory(),
                 
                
            
           ],
          ),
        ),
      ),

    );
  }
}

 class customvideocard extends StatelessWidget {
  String imageurl;
  String rating;
  String duration;
  String profileimage;
  String title;
  String username;
  
  
  
  
  

   customvideocard({
    required this.rating,
    required this.duration,
    required this.imageurl,
     required this.profileimage,
      required this.title,
       required this.username,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 280,
      
      child: Column(
        children: [
          Expanded(
            child: Container(
              
              width: 280,
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
    );

  }
}

class popularcategory extends StatelessWidget {
  const popularcategory({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 5, child:
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
    // TabBarView(
    //   physics: NeverScrollableScrollPhysics(),
    //   children: [
    //   Expanded(
    // child: Container(
    //   color: Colors.red,
    // ),
    //   ),
    //   Container(
    // color: Colors.red,
    //   ),
    //   Container(
    // color: Colors.red,
    //   ),
    //   Container(
    // color: Colors.red,
    //   ),
    //   Container(
    // color: Colors.red,
    //   ),
      
    // ])
    SizedBox(height: 10),
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
            height: 176,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey,
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
    )


      ],
    ),
    );
  }
}