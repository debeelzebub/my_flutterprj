import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: GridView2(),
  ));
}

// ignore: must_be_immutable
class GridView2 extends StatelessWidget {

  List colors=[Colors.blue,Colors.orange,Colors.green,Colors.pink,
  Colors.red,Colors.blueAccent,Colors.purple,Colors.teal,Colors.yellow,
  Colors.deepOrange,Color.fromARGB(255, 7, 95, 10),Colors.pinkAccent];

  List icons=[Icons.home,Icons.notification_important,Icons.linked_camera,Icons.local_activity,Icons.leak_remove,
  Icons.book,Icons.phone,Icons.mail,Icons.map_sharp,Icons.memory,Icons.mic_off,Icons.note_add];

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text("Grid View"),
      ),
      body: GridView.builder(
          itemCount: 12, //total no of item
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              //how many items should view horizontally
              crossAxisCount: 2,
              //space between items placed vertically
              // mainAxisSpacing:0,
              //space between items placed horizontally
              // crossAxisSpacing: 5
                crossAxisSpacing: 3,
      mainAxisSpacing: 8,
    childAspectRatio: (3/1),),
          //provide children for gridview
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(right:10,left: 10,),
              child: Card(
                elevation: 2,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                color: colors[index],
                child: Row( mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(icons[index],size: 40,color: const Color.fromARGB(122, 0, 0, 0)),
                    const SizedBox(width: 20,),
                    const Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Heart",
                          style:  TextStyle(fontSize: 20, color: Colors.black),
                        ),
                        Text("Shaker",
                          style:  TextStyle(fontSize: 20, color: Colors.black),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}