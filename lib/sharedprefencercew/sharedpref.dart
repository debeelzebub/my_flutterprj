import 'package:flutter/material.dart';
import 'package:my_flutterprj/sharedprefencercew/sharehome.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main(){
  runApp(MaterialApp(
  home:Myshare(),
  ));
}

class Myshare extends StatefulWidget {
  const Myshare({super.key});

  @override
  State<Myshare> createState() => _MyshareState();
}

class _MyshareState extends State<Myshare> {

final _tcon =TextEditingController();
final _tcon2 =TextEditingController();

late SharedPreferences pref;
late bool newy;

 @override
  void initState() {
    check_user_already_login();
    super.initState();
  }

  void check_user_already_login() async {
    pref = await SharedPreferences.getInstance();
    ///  if  first condition is null  execute second statement
    newy = pref.getBool('newy') ?? true;

    if (newy == false) {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => ShareHome()));
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: Center(child: Column(
        children: [
          TextField(
            controller: _tcon,
            decoration: InputDecoration(
              hintText: 'username'
            ),
          ),
          TextField(
            controller: _tcon2,
            decoration: const InputDecoration(
              hintText: 'password'
            ),
          ),
          ElevatedButton(onPressed: () async {

            pref =await SharedPreferences.getInstance();
            String username=_tcon.text;
            String pass =_tcon2.text;

            if(username != "" && pass !=""){
              pref.setString("uname", username);
              pref.setBool("newy", false);

              Navigator.of(context).push(MaterialPageRoute(builder: (context)=> ShareHome()));
            }
          }, child: Text("Submit"))
        ],
      )),
    );
  }
}