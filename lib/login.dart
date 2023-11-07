import 'package:flutter/material.dart';
import 'package:my_flutterprj/home.dart';
import 'package:my_flutterprj/register.dart';

class MyLogin extends StatefulWidget {
  const MyLogin({super.key});

  @override
  State<MyLogin> createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {

  String username ="anu123@";
  String password ="12345";

  final uname = TextEditingController();

  final pass =TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Padding(
        padding: const EdgeInsets.only(top:25,bottom:50,left: 40,right: 40),
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top:50),
                child: Image.asset("assets/icons/icons8-cat-100.png"),
              ),
              SizedBox(height: 5,),
              Text("LOGIN",style: TextStyle(fontSize: 25,color: Colors.black),),
              Padding(
                padding: const EdgeInsets.only(top:25,right: 20,left: 20),
                child: TextField(
                  controller: uname,
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
                  controller: pass,
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
              const SizedBox(height: 50,),
              ElevatedButton(onPressed: (){
                if(uname.text !="" && pass !=""){
                if(username==uname.text && password==pass.text){
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) =>const My_home(),));
                }else{
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content:Text( "Wrong username or password"),
                    backgroundColor: Colors.red,));
                }
                
              } else{
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("Please enter your login details",style: TextStyle(color: Colors.black),),
                  backgroundColor: Colors.yellow,));
              }
  },child:const Text("SUBMIT")),
              TextButton(onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) =>const Myregister(),));
              }, child:const Text("Click here to register!",style:TextStyle(color: Colors.black),))
            ],
          ),
        ),
      ),
    );
  }
}