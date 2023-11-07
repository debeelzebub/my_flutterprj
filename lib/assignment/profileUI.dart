import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home:MyProfileui() ,
  ));
}

class MyProfileui extends StatelessWidget {
  const MyProfileui({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.white,
      //   leading: Icon(Icons.arrow_back,color: Colors.black,),
      //   actions: [Icon(Icons.menu,color: Colors.black,)],
      // ),

      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Icon(Icons.arrow_back,color: Colors.black,),
            Icon(Icons.menu,color: Colors.black,)],),
            const SizedBox(height: 25,),
            const Column(
              children: [
              CircleAvatar(backgroundImage: AssetImage("assets/image/car.jpg"),maxRadius: 65,),
              SizedBox(height: 20,),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
              FaIcon(FontAwesomeIcons.facebook,color: Color.fromARGB(255, 25, 103, 167),size: 30,),
              SizedBox(width: 20,),
              FaIcon(FontAwesomeIcons.squareTwitter,color: Colors.blue,size: 30),
              SizedBox(width: 20,),
              FaIcon(FontAwesomeIcons.linkedin,color: Colors.teal,size: 30),
              SizedBox(width: 20,),
              FaIcon(FontAwesomeIcons.github,color: Colors.black,size: 30)
              ],),
              SizedBox(height: 25,),
              Text("Sruthy Surendran",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
              Text("@luminar",style: TextStyle(color: Colors.black),),
              Text("Mobile App Developer",style: TextStyle(color: Colors.black,fontSize:15,fontWeight: FontWeight.w500),),
              
            ],),
            const SizedBox(height: 15,),
            Expanded(
              child: ListView(
                  children: [
                    Card(
                      color: const Color.fromARGB(255, 238, 235, 235),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                      child:const ListTile(
                        leading: Icon(Icons.privacy_tip_outlined,color: Colors.black,),
                        title: Text("Privacy",style: TextStyle(fontWeight: FontWeight.bold),),
                        trailing: Icon(Icons.navigate_next,color: Colors.black,),
                      ),
                    ),
                    Card(
                      color: const Color.fromARGB(255, 238, 235, 235),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                      child:const ListTile(
                        leading: Icon(Icons.history,color: Colors.black,),
                        title: Text("Privacy History",style: TextStyle(fontWeight: FontWeight.bold),),
                        trailing: Icon(Icons.navigate_next,color: Colors.black,),
                      ),
                    ),
                    Card(
                      color:const Color.fromARGB(255, 238, 235, 235),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                      child:const ListTile(
                        leading: Icon(Icons.help_outline,color: Colors.black,),
                        title: Text("Help & Support",style: TextStyle(fontWeight: FontWeight.bold),),
                        trailing: Icon(Icons.navigate_next,color: Colors.black,),
                      ),
                    ),
                    Card(
                      color: const Color.fromARGB(255, 238, 235, 235),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                      child:const ListTile(
                        leading: Icon(Icons.settings_outlined,color: Colors.black,),
                        title: Text("Settings",style: TextStyle(fontWeight: FontWeight.bold),),
                        trailing: Icon(Icons.navigate_next,color: Colors.black,),
                      ),
                    ),
                    Card(
                      color: const Color.fromARGB(255, 238, 235, 235),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                      child:const ListTile(
                        leading: Icon(Icons.person_add_alt_1_outlined,color: Colors.black,),
                        title: Text("Invite a friend",style: TextStyle(fontWeight: FontWeight.bold),),
                        trailing: Icon(Icons.navigate_next,color: Colors.black,),
                      ),
                    ),
                    Card(
                      color: const Color.fromARGB(255, 238, 235, 235),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                      child:const ListTile(
                        leading: Icon(Icons.logout,color: Colors.black,),
                        title: Text("Logout",style: TextStyle(fontWeight: FontWeight.bold),),
                        trailing: Icon(Icons.navigate_next,color: Colors.black,),
                      ),
                    ),
                  ],
                ),
            )
          ],
        ),
      ),
    );
  }
}