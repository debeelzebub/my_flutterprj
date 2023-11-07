import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

 void main(){
  runApp(const MaterialApp(           
   debugShowCheckedModeBanner: false, 
   home: MyWidget(), 
  ));
 }
// runapp to run prgm,material app default theme of app, remove debug badge,initial screen of app
 class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {

    return  Scaffold(
      // backgroundColor: Colors.teal,
      appBar: AppBar(
      title:const Center(child: Text('FLUTTER'))
    ),
      body: Container(
        decoration:const BoxDecoration(
          // image: DecorationImage(   
          //   image : AssetImage("assets/image/gwen-king-3OdajQGd9sk-unsplash.jpg"),//image: NetworkImage("https://images.unsplash.com/photo-1687300168808-36d497572dff?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80"),
          // fit: BoxFit.fill,
          // )
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
              // Icon(Icons.favorite,color: Colors.red,size: 45,),
              Image.asset("assets/icons/icons8-cat-100.png",height:150,),
              // Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQt9Er7RnkdzFJyIs3nktxGNX0qNTgBfLx5fSF9A53cfqtiNSqWnK4YUNnr3UyUlgwpIKA&usqp=CAU"),
              Text("MY SHOPPING", style: GoogleFonts.alkalami(fontSize: 40,color: Colors.black),)
            ],
          ),
        ),
      ),
    );
  }
}