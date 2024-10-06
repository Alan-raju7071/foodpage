import 'package:flutter/material.dart';
import 'package:foodpage/utilis/const/colr_const.dart';

class customtextfield extends StatelessWidget {
  const customtextfield({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
     children: [
        Expanded(
         flex: 5,
          child: TextFormField(
                          decoration: InputDecoration(
                            hintText: "Item Name",
                            enabledBorder: OutlineInputBorder(
           borderSide: BorderSide(
             color: ColrConst.primaryColor
           ),
           borderRadius: BorderRadius.circular(10),
                            ),
                            focusedBorder:  OutlineInputBorder(
           borderSide: BorderSide(
             color: ColrConst.primaryColor
           ),
            borderRadius: BorderRadius.circular(10),
                          ),
          
                        ),
                        ),
        ),
        SizedBox(width: 12),
    Expanded(
     flex: 3,
      child: TextFormField(
       decoration: InputDecoration(
         hintText: "Quality",
         enabledBorder: OutlineInputBorder(
           borderSide: BorderSide(
             color: ColrConst.primaryColor
           ),
           borderRadius: BorderRadius.circular(10),
         ),
         focusedBorder:  OutlineInputBorder(
           borderSide: BorderSide(
             color: ColrConst.primaryColor
           ),
            borderRadius: BorderRadius.circular(10),
       ),
      
                    ),
                    ),
    ),
    SizedBox(width: 12),
    Icon(Icons.remove),
    
     ],
    );
  }
}