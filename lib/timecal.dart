// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class timecal extends StatefulWidget {
  const timecal({super.key});

  @override
  State<timecal> createState() => _timecalState();
}

class _timecalState extends State<timecal>
    with SingleTickerProviderStateMixin {
 
  int timesec =0;
  final _hours = TextEditingController();
  final _minutes = TextEditingController();
  final _second = TextEditingController();


  @override
  void dispose() {
    _hours.dispose();
    _minutes.dispose();
    _second.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:() =>  FocusScope.of(context).unfocus(),
      child: Scaffold(
          appBar: AppBar(
              flexibleSpace: Container(
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                colors: [
                
                  Color.fromARGB(255, 28, 108, 179),
                    Color.fromARGB(255, 109, 71, 182),
                ],
              )),
            ),
              title: const Text(
                "seconds calculator",
                style: TextStyle(fontSize: 27, color: Colors.black),
              ),
             
            ),
        body: Container(
          decoration:const BoxDecoration(
                  gradient: LinearGradient(
                colors: [
                
                  Color.fromARGB(255, 28, 108, 179),
                    Color.fromARGB(255, 109, 71, 182),
                ],
              )) ,
          child: Column(
           children:[
            const SizedBox(height: 20,),
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: TextFormField(
                      
                      controller: _hours,
                      style: const TextStyle(color: Colors.white),
                      cursorColor: Colors.white,
                      
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide:
                                  const BorderSide(color: Colors.white, width: 2.0)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide:
                                  const BorderSide(color: Colors.white, width: 2.0)),
                          labelText: 'Hours',
                          labelStyle: const TextStyle(color: Colors.white) 
                          ),
                          
                  ),
                   ),
             const SizedBox(height: 5,),
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: TextFormField(
                      controller: _minutes,
                      style: const TextStyle(color: Colors.white),
                      cursorColor: Colors.white,
                      
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide:
                                  const BorderSide(color: Colors.white, width: 2.0)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide:
                                  const BorderSide(color: Colors.white, width: 2.0)),
                          labelText: 'Minutes',
                          labelStyle: const TextStyle(color: Colors.white) 
                          ),
                          
                  ),
                   ),
             const SizedBox(height: 5,),
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: TextFormField(
                      controller: _second,
                      style: const TextStyle(color: Colors.white),
                      cursorColor: Colors.white,
                      
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide:
                                  const BorderSide(color: Colors.white, width: 2.0)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide:
                                  const BorderSide(color: Colors.white, width: 2.0)),
                          labelText: 'seconds',
                          labelStyle: const TextStyle(color: Colors.white) 
                          ),
                          
                  ),
                   ),
              const SizedBox(height: 10,),
            
            Container(
                        decoration: BoxDecoration(
                             border: Border.all(width: 1,color: Colors.white),
                            gradient: const LinearGradient(colors: [
                              Color.fromARGB(255, 109, 71, 182),
                              Color.fromARGB(255, 28, 108, 179),
                            ]),
                            borderRadius: BorderRadius.circular(5),
                            shape: BoxShape.rectangle),
                        child: ElevatedButton(
                          onPressed:(() {
            timesec=timmer();
          
             Navigator.of(context).pop(timesec);
          }) ,
                          style: ElevatedButton.styleFrom(
                              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                              backgroundColor: Colors.transparent,
                              shadowColor: Colors.transparent),
                          child: const Text('convert to second'),
                        ),
                      ),  
           ],
          ),
        ),
      
    
      ),
    );
  }
  
  int timmer() {
    int x,y,z,k;

    x=int.tryParse(_hours.text) ?? 0;
    y=int.tryParse(_minutes.text) ?? 0;
    z=int.tryParse(_second.text) ?? 0;

    k=(x*60*60)+(y*60)+(z);
    return k;
  }
}