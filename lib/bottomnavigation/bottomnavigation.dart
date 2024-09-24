import 'package:flutter/material.dart';
import 'package:foodpage/view/bookmark/bookmark.dart';
import 'package:foodpage/view/home/home.dart';

class Bottomnavigation extends StatefulWidget {
  const Bottomnavigation({super.key});

  @override
  State<Bottomnavigation> createState() => _BottomnavigationState();
}

class _BottomnavigationState extends State<Bottomnavigation> {
  int selected=0;
  List selectedsreen=[
    Home(),
    Bookmark(),
    Container(),
    Container(),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: selectedsreen[selected],
    
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        backgroundColor: Colors.white,
        onPressed: () {},
        child: Icon(
          Icons.add,
          color: Colors.black,
       ),
         ),

      bottomNavigationBar:BottomNavigationBar(
        currentIndex:selected,
        onTap: (value) {
          selected=value;
          setState(() {
            
          });
        },
        
         selectedItemColor: Colors.red,
        
        type: BottomNavigationBarType.fixed,
        items:[
          
        BottomNavigationBarItem(
          
          
          icon: Icon(Icons.home_outlined),
        activeIcon: Icon(Icons.home_outlined),

        label: ""),
        BottomNavigationBarItem(icon: Icon(Icons.bookmark),
        activeIcon: Icon(Icons.bookmark),

        label: ""),
        BottomNavigationBarItem(icon: Icon(Icons.notifications_outlined),
        activeIcon: Icon(Icons.notifications_outlined),

        label: ""),
         BottomNavigationBarItem(icon: Icon(Icons.person_2_outlined),
         activeIcon: Icon(Icons.person_2_outlined),

         label: ""),

      ])
        
      

    );
  }
}