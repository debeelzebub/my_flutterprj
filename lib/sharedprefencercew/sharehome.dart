import 'package:flutter/material.dart';
import 'package:my_flutterprj/sharedprefencercew/sharedpref.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ShareHome extends StatefulWidget {
  const ShareHome({super.key});

  @override
  State<ShareHome> createState() => _ShareHomeState();
}

class _ShareHomeState extends State<ShareHome> {

  late SharedPreferences pref;
  String? uname;

  @override
  void initState() {
    // TODO: implement initState
    fetchdata();
    super.initState();
  }
Future<void> fetchdata() async {
 pref =await SharedPreferences.getInstance();

 setState(() {
   
   uname=pref.getString("uname")!;
 });
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body:Center(
        child:Column(
          children: [
             Text("Wellcome $uname"),
             ElevatedButton(onPressed: (){
                            pref.setBool('newy', true);
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Myshare()));
            

             }, child:const Text("Logout"))
          ],
        ) ) ,
    );
  }
}