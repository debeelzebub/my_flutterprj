import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyBottomSheet(),
  ));
}
class MyBottomSheet extends StatelessWidget {
  const MyBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {
            showsheet(context);
          },
          child: Image.asset("assets/image/watermelon.jpg"),
        ),
      ),
    );
  }
  
  void showsheet(BuildContext context) {
    showModalBottomSheet(context: context, builder:(context)=>
    Container(
      child:const Column(mainAxisSize: MainAxisSize.min,
        children: [
          ListTile(
            leading: FaIcon(FontAwesomeIcons.facebook,color: Colors.blue,),
            title: Text("FaceBook"),
          ),
          ListTile(
            leading: FaIcon(FontAwesomeIcons.whatsapp,color: Colors.green,),
            title: Text("WhatsApp"),
          )
        ],
      ),
    )
    );
  }

  
}