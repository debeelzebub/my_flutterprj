import 'package:flutter/material.dart';
class Myreg extends StatelessWidget {
  const Myreg({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Column(
            children: [
              
              SizedBox(height:100,),
              Text("SIGN UP",style: TextStyle(fontSize: 25,color: Colors.black,fontWeight: FontWeight.bold),),
              Text("Create an account its free",style: TextStyle(fontSize:10,color: Colors.black),),
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
                  helperText: 'Enter your Email Id',
                  labelText:'USERNAME',
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
                  helperText: 'Password must contain 13 characters',
                  labelText:'PASSWORD',
                  labelStyle:const TextStyle(color: Colors.black) ,
                  prefixIcon: const Icon(Icons.lock,),
                  suffixIcon: const Icon(Icons.visibility_off),
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
                    ),child:const Text("Sign Up")),
              TextButton(onPressed: (){
                // Navigator.of(context).push(MaterialPageRoute(builder: (context) =>const Myregister(),));
              }, child:const Text("Do you have an account? Login",style:TextStyle(color: Colors.black),))
            ],
          ),
    );
  }
}