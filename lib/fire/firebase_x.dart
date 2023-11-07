import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:my_flutterprj/fire/firehelper.dart';
import 'package:my_flutterprj/fire/firehome.dart';
import 'package:my_flutterprj/fire/registerfire.dart';

void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    home: MyFirelogin(),
  ));
}

class MyFirelogin extends StatefulWidget {
  const MyFirelogin({super.key});

  @override
  State<MyFirelogin> createState() => _MyFireloginState();
}

class _MyFireloginState extends State<MyFirelogin> {
  final tcon2=TextEditingController();
  final tcon3=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FireBase Login"),
      ),
      body: Column(
        children: [
          TextField(
            controller: tcon2,
            decoration: InputDecoration(
              border: OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
              hintText: "username"
            ),
          ),
          TextField(
            controller: tcon3,
            decoration: InputDecoration(
              border: OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
              hintText: "password"
            ),
          ),
          ElevatedButton(onPressed: (){
            String uname=tcon2.text;
            String pass=tcon3.text;
            Firehelper().signin(email:uname,passwrd:pass).then((value) {
              if(value==null){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>MyFirehome()));
              }
              else{
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(value),));
              }
            });
          }, child: Text("submit")),
          TextButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>MyFireregister()));
          }, child: Text("Register"))
        ],
      ),
    );
  }
}