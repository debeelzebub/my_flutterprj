import 'package:flutter/material.dart';
void main(List<String> args) {
  runApp( MaterialApp(
    debugShowCheckedModeBanner: false,
    theme:ThemeData(
      // brightness: Brightness.dark,
      primaryColor: Colors.green,
    ),
    home: My_home(),
  ));
}

class My_home extends StatelessWidget {
  const My_home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title:const Text("WhatsApp",style: TextStyle(color: Colors.white,fontSize: 25),),
        actions: [Row(mainAxisSize: MainAxisSize.min,
          children: [
          const Icon(Icons.search),
          const SizedBox(width: 10,),
          const Icon(Icons.camera_alt),
          const SizedBox(width: 5,),
          PopupMenuButton(itemBuilder: (context){
              return [
                const PopupMenuItem(child: Text("Setting"),
                )
              ];
          })
        ],)],
      ),
      body:Container(
        child: ListView.builder(
          itemBuilder:(context ,index){
           return const Column( children: [
              ListTile(
                leading: CircleAvatar(backgroundImage:AssetImage("assets/icons/icons8-cat-100.png")),
                title:Text("Kiran"),
                subtitle: Row(
                  children: [
                    Icon(Icons.done_all,size: 15,color: Colors.blue,),
                    Text("Hello"),
                  ],
                ),
                trailing: Column(
                  children: [
                    Text("Yesterday",style: TextStyle(fontSize: 10),),
                    SizedBox(height: 5,),
                    Text("11.11 am",style: TextStyle(fontSize: 10),)
                  ],
                ),
              ),
             
            ],
           );
          },
        ),
              ),
              floatingActionButton: FloatingActionButton(onPressed: (){}),
                  );
  }
}