import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

 void main(){
  runApp(const MaterialApp(           
   debugShowCheckedModeBanner: false, 
   home: Widgetmy(), 
  ));
 }
// runapp to run prgm,material app default theme of app, remove debug badge,initial screen of app
 class Widgetmy extends StatelessWidget {
  const Widgetmy({super.key});

  @override
  Widget build(BuildContext context) {

    return  Scaffold(
      // backgroundColor: Colors.teal,
      
      body: Container( height: MediaQuery.of(context).size.height,
        decoration:const BoxDecoration(
          // image: DecorationImage(   
          //   image : AssetImage("assets/image/gwen-king-3OdajQGd9sk-unsplash.jpg"),//image: NetworkImage("https://images.unsplash.com/photo-1687300168808-36d497572dff?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80"),
          
          // ),
          gradient: LinearGradient(
            // stops: [0,0,0,10],
            colors: [
              Color.fromARGB(255, 243, 34, 86),
              Color.fromARGB(255, 221, 102, 34),
              Color.fromARGB(255, 228, 127, 33),
               Colors.orange,
               Colors.green,
            ],
            begin: Alignment.topCenter,end:Alignment.bottomCenter
            ),
          
        ),
        child: Center(
          child: Column( 
            children: [
              // Icon(Icons.favorite,color: Colors.red,size: 45,),
              Padding(
                padding: const EdgeInsets.only(top:90),
                child: Image.asset("assets/icons/plate1.png",height:130,),
              ),
              // Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQt9Er7RnkdzFJyIs3nktxGNX0qNTgBfLx5fSF9A53cfqtiNSqWnK4YUNnr3UyUlgwpIKA&usqp=CAU"),
            //  const SizedBox(height: 10,),
              Text("Fresh Foods", style: GoogleFonts.righteous(fontSize: 30,color: Colors.white),),
              const SizedBox(height: 5,),
               Text("Tasty & Healthy", style: GoogleFonts.aboreto(fontSize: 17,color: Colors.white),),
               Image.asset("assets/image/frute.png",height:250 ,),
            ],
          ),
        ),
      ),
    );
  }
}