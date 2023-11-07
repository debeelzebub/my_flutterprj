import 'package:flutter/material.dart';
import 'package:my_flutterprj/fire/firebase_x.dart';

import 'firehelper.dart';

class MyFireregister extends StatefulWidget {
  const MyFireregister({super.key});

  @override
  State<MyFireregister> createState() => _MyFireregisterState();
}

class _MyFireregisterState extends State<MyFireregister> {

  final tcon=TextEditingController();
  final tcon1=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FireBase Register"),
      ),
       body: Column(
        children: [
          TextField(
            controller: tcon,
            decoration: InputDecoration(
              border: OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
              hintText: "username"
            ),
          ),
          TextField(
            controller: tcon1,
            decoration: InputDecoration(
              border: OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
              hintText: "password"
            ),
          ),
          ElevatedButton(onPressed: (){
            String uname=tcon.text;
            String pass=tcon1.text;
            Firehelper().signup(email:uname,passwrd:pass).then((message) {
              if(message==null){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>MyFirelogin()));
              }
              else{
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message),));
              }
            });


          }, child: Text("submit")),
          TextButton(onPressed: (){}, child: Text("Login"))
        ],
      ),
    );
  }
}