import 'package:flutter/material.dart';
import 'package:my_flutterprj/assignment/signin.dart';
import 'package:my_flutterprj/assignment/signup.dart';



 void main(){
  runApp(const MaterialApp(           
   debugShowCheckedModeBanner: false, 
   home: Myhome1(), 
  ));
 }
 class Myhome1 extends StatefulWidget {
  const Myhome1({super.key});

  @override
  State<Myhome1> createState() => _Myhome1State();
}

class _Myhome1State extends State<Myhome1> {
  @override
  void initState() {
    

    super.initState();

  }
  
  @override

  Widget build(BuildContext context) {

    return  Scaffold(
      backgroundColor: Color.fromARGB(255, 144, 241, 201),
      body: Container(
       
        child: Center(
          child: Column( 
            children: [
             const Padding(
               padding:  EdgeInsets.only(top:80 ,),
               child: Text("Hello There !", style: TextStyle(fontSize:25,color: Colors.black,fontWeight:FontWeight.bold),),
             ),
             const Text("Automatic identify verification which enable you to verify ypur identity",style: TextStyle(fontSize: 10),),
             Image.asset("assets/image/frnt-removebg-preview.png",height: 320,width:300,),
             ElevatedButton(onPressed: (){
               Navigator.of(context).push(MaterialPageRoute(builder: (context) =>const Loginpage(),));
             }, 
                    style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
                    padding:MaterialStateProperty.all(
                     const EdgeInsets.symmetric(vertical:15,horizontal:90)),
                    ),
      
                    child:const Text("Login",style: TextStyle(fontSize:20,color: Colors.black),)),
                    const SizedBox(height: 10,),
                    ElevatedButton(onPressed: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) =>const Myreg(),));
                    }, 
                    style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
                    padding:MaterialStateProperty.all(
                     const EdgeInsets.symmetric(vertical: 15,horizontal:80)),
                    ),
      
                    child:const Text("Sign Up",style: TextStyle(fontSize:20,color: Colors.black),)),
            ],
          ),
        ),
      ),
    );
  }
}