import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: MyDrawer(),
  ));
}

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title:const Text("DRAWER"),
      ),
      drawer: Theme(
        data: Theme.of(context).copyWith(canvasColor: Colors.deepPurpleAccent),
        child: Drawer(    
          child: ListView(
            children:const  [
              UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.black
                ),
                accountName: Text("sruthy surendran"), accountEmail: Text("surthy13242@gmail.com"),
                currentAccountPicture:CircleAvatar(backgroundImage:AssetImage("assets/image/frnt.jpg") ,)  ,
                // otherAccountsPictures: [],
                ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text("Home"),
              ),
              ListTile(
                leading: Icon(Icons.info),
                title: Text("About"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}