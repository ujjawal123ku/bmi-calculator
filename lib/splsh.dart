import 'dart:async';

//import 'package:flutter/cupertino.dart';
import 'package:bmi/main.dart';
import 'package:flutter/material.dart';

class splsh extends StatefulWidget {


  @override
  State<splsh> createState() => _splshState();
}

class _splshState extends State<splsh> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=>MyHomePage(),
      ));

    }
    );
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build


    return Scaffold(
      body: Container(
       color: Colors.indigo,
        child: Center(child: Text('CALCULATOR',style: TextStyle(fontSize: 20,fontWeight:FontWeight.w300),)),
      ),
    );
  }
}


