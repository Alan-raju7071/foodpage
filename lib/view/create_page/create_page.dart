import 'package:flutter/material.dart';
import 'package:foodpage/utilis/const/colr_const.dart';
import 'package:foodpage/view/dummy_dp.dart';
import 'package:foodpage/view/global_widgets/Cutomtextfield.dart';
import 'package:foodpage/view/global_widgets/custom_listtile.dart';


class CreatePage extends StatelessWidget {
  const CreatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Icon(Icons.more_horiz),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            
            children: [
              Text("Create recipe",
              
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),),
              SizedBox(height:24),
              Container(
                padding: EdgeInsets.all(10),
                width: 335,
                height: 200,
          
                 decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image:DecorationImage(image: NetworkImage("https://images.pexels.com/photos/376464/pexels-photo-376464.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Icon(Icons.edit_note_outlined,
                      )
                    ],
                  ),
              
              
                ),
                SizedBox(height: 16),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Name",
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
                SizedBox(height: 16),
                Custom_list(
                  havearrow: true,
                  imageurl:DummyDp.customList[0]["imageurl"] , 
                title:DummyDp.customList[0]["title"] ,
                 duration:DummyDp.customList[0]["duration"] ),
                  Custom_list(
                  havearrow: true,
                  imageurl:DummyDp.customList[0]["imageurl"] , 
                title:DummyDp.customList[0]["title"] ,
                 duration:DummyDp.customList[0]["duration"] ),
                 SizedBox(height: 16),
                 Text("ingrediants",
                 style: TextStyle(
                  fontSize:24 ,
                  fontWeight: FontWeight.w600,
                 ),
                 ),
                 SizedBox(height: 16),
                 customtextfield(),
                 SizedBox(height: 16),
                  customtextfield(),
                  SizedBox(height: 16),
                   customtextfield(),
                   SizedBox(height: 16),
                    customtextfield(),
                    SizedBox(height: 20),
                    Text("+ Add new Ingredients",
                    style: TextStyle(
                      fontSize:24 ,
                      fontWeight: FontWeight.w600,
                    ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: ColrConst.primaryColor,

                      ),
                      child: Center(
                        child: Text("Save my recipee",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                        ),
                        ),
                      ),
                    )
                
              
              
              
              
              
              
              
            ],
          ),
        ),
      ),
    
    );
  }
}

