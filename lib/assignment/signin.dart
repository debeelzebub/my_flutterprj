import 'package:flutter/material.dart';

class Loginpage extends StatelessWidget {
  const Loginpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
            children: [
              
              SizedBox(height:150,),
              Text("LOGIN",style: TextStyle(fontSize: 25,color: Colors.black,fontWeight: FontWeight.bold),),
              Text("Welcome back ! Login with your credentials",style: TextStyle(fontSize:10,color: Colors.black),),
              Padding(
                padding: const EdgeInsets.only(top:25,right: 20,left: 20),
                child: TextField(
                  decoration: InputDecoration(border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide:const BorderSide(color: Colors.black)
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide:const BorderSide(color: Colors.black,width:1),
                  ),
                  hintText: "username",
                  labelText:'EMAIL ID',
                  labelStyle:const TextStyle(color: Colors.black) ,
                  prefixIcon:const Icon( Icons.person,),
                  fillColor: Colors.white),
                  
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top:25,right: 20,left: 20),
                child: TextField(
                  obscureText: true,
                  obscuringCharacter: '*',
                  decoration: InputDecoration(focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide:const BorderSide(color: Colors.black,width:1),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  
                  hintText: "Password",
                  labelText:'PASSWORD',
                  labelStyle:const TextStyle(color: Colors.black) ,
                  prefixIcon: const Icon(Icons.lock,),
                  suffixIcon: const Icon(Icons.visibility_off),
                  fillColor: Colors.white),
                ),
              ),
              const SizedBox(height: 50,),
              ElevatedButton(onPressed: (){
                // Navigator.of(context).push(MaterialPageRoute(builder: (context) =>const Myhome(),));
              },
              style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
                    padding:MaterialStateProperty.all(
                     const EdgeInsets.symmetric(vertical: 15,horizontal:80)),
                    ),child:const Text("Login")),
              TextButton(onPressed: (){
                // Navigator.of(context).push(MaterialPageRoute(builder: (context) =>const Myregister(),));
              }, child:const Text("Do you have an account? Sign Up",style:TextStyle(color: Colors.black),))
            ],
          ),
    );
  }
}