import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home2 extends StatefulWidget {
  const Home2({super.key});

  @override
  State<Home2> createState() => _Home2State();
}

class _Home2State extends State<Home2> {
  List trendingList=[

  {
    "imageurl": "https://images.pexels.com/photos/376464/pexels-photo-376464.jpeg?auto=compress&cs=tinysrgb&w=600",
  },
  {
    "imageurl": "https://images.pexels.com/photos/1640772/pexels-photo-1640772.jpeg?auto=compress&cs=tinysrgb&w=600",

  },
  {
    "imageurl": "https://images.pexels.com/photos/1199957/pexels-photo-1199957.jpeg?auto=compress&cs=tinysrgb&w=600",

  },
  {
    "imageurl": "https://images.pexels.com/photos/1279330/pexels-photo-1279330.jpeg?auto=compress&cs=tinysrgb&w=600",

  },
  {
    "imageurl": "https://images.pexels.com/photos/699953/pexels-photo-699953.jpeg?auto=compress&cs=tinysrgb&w=600",

  },
  {
    "imageurl": "https://images.pexels.com/photos/769289/pexels-photo-769289.jpeg?auto=compress&cs=tinysrgb&w=600",

  },
  {
    "imageurl": "https://images.pexels.com/photos/1410235/pexels-photo-1410235.jpeg?auto=compress&cs=tinysrgb&w=600",

  },
  {
    "imageurl": "https://images.pexels.com/photos/2097090/pexels-photo-2097090.jpeg?auto=compress&cs=tinysrgb&w=600",

  },
  {
    "imageurl": "https://images.pexels.com/photos/262959/pexels-photo-262959.jpeg?auto=compress&cs=tinysrgb&w=600",

  },
  {
    "imageurl": "https://images.pexels.com/photos/1199957/pexels-photo-1199957.jpeg?auto=compress&cs=tinysrgb&w=600",

  }
];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(

        title: Text("instagram"),
        actions: [
          Icon(Icons.favorite_outline),
          SizedBox(
            width: 10,

          ),
          Icon(Icons.message_outlined),
          SizedBox(
            width: 10,

          ),
        ],
      ),
      body: Column(
        children: [
          ListView.separated(itemBuilder: (context, index) => CircleAvatar(backgroundImage: NetworkImage(trendingList[index]["imageurl"]),), separatorBuilder:(context, index) => SizedBox(), itemCount:trendingList.length )
        ],
      ),
    );

  }
}