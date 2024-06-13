// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables, deprecated_member_use, use_build_context_synchronously, duplicate_ignore, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:dotted_line/dotted_line.dart';

class designcon extends StatelessWidget {
  const designcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            flexibleSpace: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
              colors: const [
              
                Color.fromARGB(255, 28, 108, 179),
                  Color.fromARGB(255, 109, 71, 182),
              ],
            )),
          ),
            title: Text(
              "Designer contact",
              style: TextStyle(fontSize: 27, color: Colors.black),
            ),
           
          ),
      body: SafeArea(     
          child: Container(
             decoration: BoxDecoration(
                gradient: LinearGradient(
              colors: const [
                Color.fromARGB(255, 109, 71, 182),
                Color.fromARGB(255, 28, 108, 179),
              ],
            )),

            child: Column(
              children: <Widget>[
    
            SizedBox(height: 9,),
            Row(children:[SizedBox(width: 9),
            
            
               CircleAvatar(
                backgroundImage: AssetImage('assets/images/abhin.png'),
                radius: 59,
                
              ),
            
              ]),SizedBox(height: 8,),
              Row(
                children: [
                  
                
                    
                     Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: Container(child: SelectableText("   NAME        : ABHIN M"),),
                     ),
                  
                ],
              ),
              SizedBox(height: 8,),
              DottedLine(dashGapLength: 4,dashLength:4 ,lineThickness:2,lineLength: 350,dashColor: Colors.black,dashGapColor: Colors.red, ),
                 SizedBox(height: 5,),
                 SelectableText("Education",style: TextStyle(fontSize: 20),),
                 SizedBox(height: 5,),
                DottedLine(dashGapLength: 4,dashLength:4 ,lineThickness:2,lineLength: 350,dashColor: Colors.black,dashGapColor: Colors.red, ),
              SizedBox(height: 4,),
                 Container(
                   child: Row(
                     children: [
                       Container(
                         child: Padding(
                           padding: const EdgeInsets.all(10),
                           child: SelectableText("      BCA       : S.A.S KONNI (present)",style: TextStyle(fontSize: 16),),
                         ),
                       ),
                             
                     ]
            ),
                 ),
                SizedBox(
                height: 15,
              ),
              DottedLine(
                dashGapLength: 0,
                dashColor: Colors.cyan,
                lineThickness: 5,
              ),
              SizedBox(
                height: 7,
              ),
              
              Row(children:[
                SizedBox(width: 7,),
               FloatingActionButton(
                onPressed: (() async {
                  String url = "https://instagram.com/mr_abhin._";
    
                  var urllaunchable = await canLaunch(url);
                  if (urllaunchable) {
                    await launch(url);
                  } else {
                    // ignore: prefer_const_constructors
                    ScaffoldMessenger.of(context)
                        .showSnackBar(SnackBar(content: Text("not installed")));
                  }
                }),
                heroTag: null,
                backgroundColor: Color.fromARGB(255, 240, 5, 138),
                child: 
                  CircleAvatar(backgroundImage: AssetImage('assets/images/insta.jpg'),)
              ),
              ]),
              SizedBox(
                height: 7,
              ),
               DottedLine(
                dashGapLength: 0,
                dashColor: Colors.cyan,
                lineThickness: 5,
              ),
            
            ]
            
            )
            
          )
          ),
    );
  }
}
