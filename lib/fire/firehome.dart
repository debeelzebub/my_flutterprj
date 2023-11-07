import 'package:flutter/material.dart';
import 'package:my_flutterprj/fire/firebase_x.dart';
import 'package:my_flutterprj/fire/firehelper.dart';

class MyFirehome extends StatefulWidget {
  const MyFirehome({super.key});

  @override
  State<MyFirehome> createState() => _MyFirehomeState();
}

class _MyFirehomeState extends State<MyFirehome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomePage'),
      ),
      body: Container(
        child: ElevatedButton(onPressed: (){
          Firehelper().signout().then((message) { 
          if(message==null){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>MyFirelogin()));
              }
              else{
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message),));
              }
        });
        }, child: Text("Logout")),
      ),
    );
  }
}