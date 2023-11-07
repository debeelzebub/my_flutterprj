import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_flutterprj/login.dart';


 void main(){
  runApp(const MaterialApp(           
   debugShowCheckedModeBanner: false, 
   home: MyWidget1(), 
  ));
 }
 class MyWidget1 extends StatefulWidget {
  const MyWidget1({super.key});

  @override
  State<MyWidget1> createState() => _MyWidget1State();  // create and initial state for screen
}

class _MyWidget1State extends State<MyWidget1> {  // initial state 
// there are two functonalities in state class
// initistate(){} and setstate(){}
//initistate(){} what will happen app or screen is initialzed
// setstate(){} chaneg occure on an widget
@override
  void initState() {
    Timer(const Duration(seconds:4),() { 
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) =>const MyLogin(),));
    });

    super.initState();

  }
  @override
  Widget build(BuildContext context) {

    return  Scaffold(
      body: Container(
        decoration:const BoxDecoration(
          gradient: LinearGradient(
            // stops: [0,0,0,10],
            colors: [
              Colors.blue,
              Color.fromARGB(255, 82, 240, 240),
              Color.fromARGB(255, 86, 185, 127),
               Colors.greenAccent
            ],
            begin: Alignment.topCenter,end:Alignment.bottomCenter
            ),
          
        ),
        child: Center(
          child: Column( mainAxisAlignment: MainAxisAlignment.center,
            children: [
             Text("WELCOME", style: GoogleFonts.alkalami(fontSize: 40,color: Colors.black),)
            ],
          ),
        ),
      ),
    );
  }
}