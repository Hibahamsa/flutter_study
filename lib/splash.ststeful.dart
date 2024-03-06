import 'dart:async';
import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter_study1/loginpage.dart';

 void main(){
   runApp(MaterialApp(
     home: Splash2(),
   ));
 }



class Splash2 extends StatefulWidget{


  @override
  void initState(){
    Timer(const Duration(seconds: 4), () {
      Navigator.pushReplacement(context, MaterialPageRoute(
          builder:(context)=>LoginPage()));
    });
       super.initState();

  }
  @override
  State<Splash2> createState() =>
      _Splash2State(); //create a mutable state for this widget

}

class _Splash2State extends State<Splash2> {
  @override
  Widget build(BuildContext){
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child:
        //
        Lottie.network(""),
      ),
    );
  }

}