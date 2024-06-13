// ignore_for_file: unused_import, camel_case_types, prefer_const_constructors

import 'package:calcu/designcon.dart';
import 'package:calcu/devcontact.dart';
import 'package:calcu/history.dart';
import 'package:calcu/home.dart';
import 'package:flutter/material.dart';

class secmain extends StatefulWidget {
   const secmain({super.key});

  @override
 
  State<secmain> createState() => _secmainState();
}

class _secmainState extends State<secmain> {
  int pageindex=0;
  List<Widget> pages=[FrameTimeCalculator(),history(),devcontact(),designcon()];
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      
       onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: AppBar(
          leading:  Builder(
            builder:(context) =>  IconButton(onPressed: 
            (() {
              Scaffold.of(context).openDrawer();
              FocusScope.of(context).unfocus();
            })
            , icon: Icon(Icons.sort,size: 32,)),
          ),
          flexibleSpace: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
              colors: const [
                Color.fromARGB(255, 109, 71, 182),
                Color.fromARGB(255, 28, 108, 179),
              ],
            )),
          ),
          title: Text('Render Count'),
        ),
        body: pages[pageindex],
        drawer: Drawer(
          
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: const [
                 Color.fromARGB(255, 132, 69, 248),
                 Color.fromARGB(255, 28, 108, 179),
              ]),
            ),
            child: Padding(
              padding: const EdgeInsets.all(7.0),
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: DrawerHeader(decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient:LinearGradient(colors: const [
                    Color.fromARGB(255, 109, 71, 182),
                    Color.fromARGB(255, 13, 126, 225),
                   ],
                  end: Alignment.bottomLeft,
                  begin: Alignment.topRight         
              
                ) ,
                    ), child:Column(
                      children: const [
                        CircleAvatar(backgroundImage: AssetImage('assets/images/logo.jpg')
                        ,radius: 50,
                        ),
                      SizedBox(height: 8,),
                        Text('Render Count',style: TextStyle(color: Colors.white,fontSize: 20),)
                      ],
                    )),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.white,width: 2),
                      gradient: LinearGradient(
                        colors: const [
                          Color.fromARGB(255, 28, 108, 179),
                          Color.fromARGB(255, 109, 71, 182),
                        ],
                        
                      ),
                    ),
                    child: ListTile(
                       onTap: () {
                        setState(() {
                          pageindex=0;
                        });
                        Navigator.of(context).pop();

                      },
                      leading: Text(
                        'Calculation',
                        style: TextStyle(color: Colors.white, fontSize: 19),
                      ),
                    ),
                  ),
                   SizedBox(height: 10,),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.white,width: 2),
                      gradient: LinearGradient(
                        colors: const [
                          Color.fromARGB(255, 28, 108, 179),
                          Color.fromARGB(255, 109, 71, 182),
                        ],
                        
                      ),
                    ),
                    child: ListTile(
                       onTap: () {
                          setState(() {
                          pageindex=1;
                        });
                         Navigator.of(context).pop();
                      },
                      leading: Text(
                        'History',
                        style: TextStyle(color: Colors.white, fontSize: 19),
                      ),
                    ),
                  ),
                   SizedBox(height: 10,),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.white,width: 2),
                      gradient: LinearGradient(
                        colors: const [
                          Color.fromARGB(255, 28, 108, 179),
                          Color.fromARGB(255, 109, 71, 182),
                        ],
                        
                      ),
                    ),
                    child: ListTile(
                       onTap: () {
                         setState(() {
                          pageindex=2;
                        });
                         Navigator.of(context).pop();
                      },
                      leading: Text(
                        'Developer contact',
                        style: TextStyle(color: Colors.white, fontSize: 19),
                      ),
                    ),
                  ),
                    SizedBox(height: 10,),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.white,width: 2),
                      gradient: LinearGradient(
                        colors: const [
                          Color.fromARGB(255, 28, 108, 179),
                          Color.fromARGB(255, 109, 71, 182),
                        ],
                        
                      ),
                    ),
                    child: ListTile(
                      onTap: () {
                        setState(() {
                          pageindex=3;
                        }); 
                        Navigator.of(context).pop();
                      },
                      leading: Text(
                        'Designer contact',
                        style: TextStyle(color: Colors.white, fontSize: 19
                        
                        
                        ),
                      ),
                    ),
                  ),
                 
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
