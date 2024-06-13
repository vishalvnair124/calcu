// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables, deprecated_member_use, use_build_context_synchronously, duplicate_ignore, avoid_unnecessary_containers



import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class devcontact extends StatelessWidget {
  const devcontact({super.key});

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
              "Developer contact",
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
                backgroundImage: AssetImage('assets/images/vishal.jpg'),
                radius: 59,
                
              ),
            
              ]),SizedBox(height: 8,),
              Row(
                children: [
                  
                
                    
                     Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: Container(child: SelectableText("NAME        : VISHAL V NAIR\nPHONE      : 9526212285\nE-MAIL       : vishalvnair124@gmail.com\nADDRESS  : saraswathy vilasam \n                     mancode p.o:689694,kalanjoor",style: TextStyle(color: Colors.white,fontSize: 15),),),
                     ),
                  
                ],
              ),
              SizedBox(height: 7,),
              DottedLine(dashGapLength: 4,dashLength:4 ,lineThickness:2,lineLength: 350,dashColor: Colors.black,dashGapColor: Colors.red, ),
                SizedBox(height: 3,),
                 SelectableText("Education",style: TextStyle(fontSize: 22,color: Colors.white),),
                SizedBox(height: 4,),
                DottedLine(dashGapLength: 4,dashLength:4 ,lineThickness:2,lineLength: 350,dashColor: Colors.black,dashGapColor: Colors.red, ),
               SizedBox(height: 7,),
                 Container(
                   child: Row(
                     children: [
                       Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: SelectableText("    SSLC     : GHSS MANCODE\n    +1/+2    : GHSS KALANJOOR\n    BCA       : S.A.S KONNI (present)"
                         ,style: TextStyle(color: Colors.white,fontSize: 15),
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
                SizedBox(width: 8,),
               FloatingActionButton(
                onPressed: (() async {
                  String url = "https://wa.me/+919526212285?text=hello";
    
                  var urllaunchable = await canLaunch(url);
                  if (urllaunchable) {
                    await launch(url);
                  } else {
                    
                    ScaffoldMessenger.of(context)
                        .showSnackBar(SnackBar(content: Text("not installed")));
                  }
                }),
                backgroundColor: Colors.green,
                child: FaIcon(FontAwesomeIcons.whatsapp)
              ),
              SizedBox(width: 6,),
               FloatingActionButton(
                onPressed: (() async {
                  String url = "https://t.me/+919526212285";
    
                  var urllaunchable = await canLaunch(url);
                  if (urllaunchable) {
                    await launch(url);
                  } else {
                    // ignore: prefer_const_constructors
                    ScaffoldMessenger.of(context)
                        .showSnackBar(SnackBar(content: Text("not installed")));
                  }
                }),heroTag: null,
                backgroundColor: Color.fromARGB(255, 5, 118, 240),
                child: Icon(
                  Icons.telegram,
                  color: Colors.white,
                ),
              ),
              SizedBox(width: 6,),
               FloatingActionButton(
                onPressed: (() async {
                  String url = "https://www.facebook.com/profile.php?id=100075173695386";
    
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
                backgroundColor: Color.fromARGB(255, 5, 118, 240),
                child: Icon(
                  Icons.facebook,
                  color: Colors.white,
                ),
              ),
              SizedBox(width: 6,),
               FloatingActionButton(
                onPressed: (() async {
                  String url = "https://instagram.com/vishalvnair124";
    
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
