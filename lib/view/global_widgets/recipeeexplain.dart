import 'package:flutter/material.dart';
import 'package:foodpage/view/dummy_dp.dart';

class Recipee_ex extends StatelessWidget {
 
    Recipee_ex({
     
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 335,
      height: 294,
      child: Column(children: [
        Container(
          width: 335,
          height: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(image: NetworkImage(DummyDp.recipeeList[0]["imageurl"]))
    
          ),
          child: Center(child: Icon(Icons.play_arrow_outlined)),
        )
      ],),
    );
  }
}