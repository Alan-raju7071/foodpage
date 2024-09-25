import 'package:flutter/material.dart';
import 'package:foodpage/view/dummy_dp.dart';
import 'package:foodpage/view/global_widgets/custom_recipee_card.dart';
import 'package:foodpage/view/global_widgets/custom_video_card.dart';


class Myprifile extends StatelessWidget {
  const Myprifile({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 2, child: 
    Scaffold(
    appBar: AppBar(
      title: Text("My profile",
      style: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
      ),
      
      actions: [Icon(Icons.more_horiz),
      SizedBox(width: 20),
      ],
      
    ),
    body: SingleChildScrollView(
      child: Column(
        
        
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: NetworkImage("data:image/jpeg;base64,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"),
                ),
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                 padding: EdgeInsets.symmetric(horizontal: 16,vertical: 8),
                  
                  decoration: BoxDecoration(
                    
                    border: Border.all(color: Colors.red),
                    borderRadius: BorderRadius.circular(10),
                    
                  ),
                  child: Text("Edit Profile",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Colors.red,
                  ),
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text("Alessandra Blair",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600
            ),
            
            ),
          ),
          SizedBox(height: 12),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text("Hello world I’m Alessandra Blair, I’m \nfrom Italy 🇮🇹 I love cooking so much!",
            style: TextStyle(
              color: Color(0xffA9A9A9),
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text("Recipe",
                    style: TextStyle(
                    
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Color(0xffA9A9A9),
                    ),
                    ),
                    Text("3",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600
                
                    ),
                    )
                  ],
                ),
                Column(
                  children: [
                    Text("Videos",
                    style: TextStyle(
                      color: Color(0xffA9A9A9),
                    
                      fontSize: 12,
                      fontWeight: FontWeight.w400
                    ),
                    
                    ),
                     Text("13",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600
                
                    ),
                    )
                     
                  ],
                ),
                Column(
                  children: [
                    Text("Followers",
                    style: TextStyle(
                      color: Color(0xffA9A9A9),
                    
                      fontSize: 12,
                      fontWeight: FontWeight.w400
                    ),
                    
                    ),
                      Text("14k",
                    style: TextStyle(
                    
                      fontSize: 20,
                      fontWeight: FontWeight.w600
                
                    ),
                    )
                  ],
                ),
                Column(
                  children: [
                    Text("Following",
                    style: TextStyle(
                      color: Color(0xffA9A9A9),
                    
                      fontSize: 12,
                      fontWeight: FontWeight.w400
                    ),
                    
                    ),
                      Text("120",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600
                
                    ),
                    )
                  ],
                ),
                
              ],
            ),
          ),
          SizedBox(height: 20),
          Divider(),
          
          TabBar(
             unselectedLabelColor: Colors.black,
              unselectedLabelStyle: TextStyle(
                fontWeight: FontWeight.normal,
              ),
               indicatorSize: TabBarIndicatorSize.tab,
               labelStyle: TextStyle(
                fontWeight: FontWeight.bold,
               ),
               labelColor: Colors.white,
            
            
              
              dividerHeight: 0,
              indicator: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(10),
                
              ),
              
            tabs: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Tab(
                child: Text("Video"),
              
              ),
            ),
             Padding(
               padding: const EdgeInsets.symmetric(horizontal: 8),
               child: Tab(
                child: Text("Recipe"),
               
                         ),
             ),
      
      
          ]),
          SizedBox(height: 500,
            child: TabBarView(children: [
              ListView.separated(
          
                      padding: EdgeInsets.symmetric(horizontal: 20,vertical:24 ),
                      
                  
                      itemBuilder: (context, index) => Customvideocard(
                    
                      
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
                       ListView.separated(
          
                      padding: EdgeInsets.symmetric(horizontal: 20,vertical:24 ),
                      
                  
                      itemBuilder: (context, index) => CustomRecipeeCard(),
                     separatorBuilder:(context, index) => SizedBox(
                      height: 16,
                      
                      
                      
                     ),
                      itemCount:10),
              
            
              
            
              
            ]),
          ),
          
         
        ],
      ),
    ),
    ),

    );
  }
}

