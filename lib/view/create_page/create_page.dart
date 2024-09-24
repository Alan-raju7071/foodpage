import 'package:flutter/material.dart';


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
            
          ],
        ),
      ),

    );
  }
}