import 'package:flutter/material.dart';
import 'package:my_flutterprj/login.dart';

class Myregister extends StatefulWidget {
  const Myregister({super.key});

  @override
  State<Myregister> createState() => _MyregisterState();
}

class _MyregisterState extends State<Myregister> {
    String username ="anu123@";
  String password ="12345";
  String? cpass;
  bool showpass=true;
  bool showpass2=true;

  final uname = TextEditingController();
  final ccpass =TextEditingController();
    final pass =TextEditingController();
  final formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Form(
        key: formkey,
        child: Padding(
          padding: const EdgeInsets.only(top:25,bottom:50,left: 40,right: 40),
          child: Container(
            color: Colors.white,
            child: Column(
              children: [
               
                SizedBox(height:20,),
                Text("REGISTER",style: TextStyle(fontSize: 25,color: Colors.black),),
                Padding(
                  padding: const EdgeInsets.only(top:20,right: 20,left: 20),
                  child: TextFormField(
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide:const BorderSide(color: Colors.black)
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide:const BorderSide(color: Colors.black,width:1),
                    ),
                    hintText: "your name",
                    helperText: 'Enter your Name',
                    labelText:'YOUR NAME',
                    labelStyle:const TextStyle(color: Colors.black) ,
                    prefixIcon:const Icon( Icons.person,),
                    fillColor: Colors.white),
                    
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top:15,right: 20,left: 20),
                  child: TextFormField(
                    textInputAction: TextInputAction.next,
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
                    validator: (value) {
                      if(value!.isEmpty || !value.contains("@")){
                        return "Enter vaild email id";
                      }else{
                        return null;
                      }
                    },
                    
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top:25,right: 20,left: 20),
                  child: TextFormField(
                    textInputAction: TextInputAction.next,
                    onFieldSubmitted: (_) => FocusScope.of(context).nextFocus(),
                    controller: pass,
                    obscureText: showpass2,
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
                    suffixIcon: IconButton(onPressed: (){
                      setState(() {
                        if(showpass2){
                          showpass2=false;
                        }else{
                          showpass2=true;
                        }
                      });
                    }, icon: Icon(showpass==true?Icons.visibility_off:Icons.visibility),) ,
                    fillColor: Colors.white),
                    validator: (passwd) {
                      if(passwd!.isEmpty || passwd.length<7){
                        setState(() {
                          cpass=pass.text;
                        });
                        return "password must contain greater than 6";
                      }else{
                      return null;}
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top:25,right: 20,left: 20),
                  child: TextFormField(
                    textInputAction: TextInputAction.send,
                    controller: ccpass,
                    obscureText: showpass,
                    obscuringCharacter: '*',
                    decoration: InputDecoration(focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide:const BorderSide(color: Colors.black,width:1),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    
                    hintText: "Confirm Password",
                    helperText: 'Password must contain 6 characters',
                    labelText:'CONFIRM PASSWORD',
                    labelStyle:const TextStyle(color: Colors.black) ,
                    prefixIcon: const Icon(Icons.lock,),
                    suffixIcon: IconButton(onPressed: (){
                      setState(() {
                        if(showpass){
                          showpass=false;
                        }else{
                          showpass=true;
                        }
                      });
                    }, icon: Icon(showpass==true?Icons.visibility_off:Icons.visibility)) ,
                    fillColor: Colors.white),
                    validator: (passwd) {
                      if(passwd!.isEmpty || ccpass.text!=pass.text){
                        return "password not match or empty";
                      }else{
                      return null;}
                    },
                  ),
                ),
                const SizedBox(height: 20,),
                ElevatedButton(onPressed: (){
                  var validIs=formkey.currentState!.validate();
                  if(validIs==true){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) =>const MyLogin(),));
                  }
                },child:const Text("REGISTER")),
                TextButton(onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) =>const MyLogin(),));
                }, child:const Text("CLICK HERE TO LOGIN!",style:TextStyle(color: Colors.black),))
              ],
            ),
          ),
        ),
      ),
    );
  }
}