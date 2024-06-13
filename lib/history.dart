
// ignore_for_file: camel_case_types, prefer_const_constructors

import 'package:flutter/material.dart';

class history extends StatefulWidget {
  const history({super.key});

  @override
  State<history> createState() => _historyState();
}

class _historyState extends State<history> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Text('page is under development\nwait for new updates',style: TextStyle(color: Colors.red,fontSize: 30),),
      ),
    );
  }
}