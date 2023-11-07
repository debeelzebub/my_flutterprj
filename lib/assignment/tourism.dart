import 'package:flutter/material.dart';
import 'package:my_flutterprj/assignment/tourismdata.dart';
import 'package:my_flutterprj/assignment/tourismlist.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
  home: MyTourist(),
  routes: {
    "place":(context) => MyData(),
  },
  ));
}

class MyTourist extends StatelessWidget {
  const MyTourist({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("  Popular",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
          const SizedBox(height: 5,),
          Expanded(
            child: ListView(
              padding:const EdgeInsets.all(8.0),
              children: place.map((e) {            
                return InkWell(
                  onTap:()=> gotodetails(context, e["id"]),
                  child: Card(
                    shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(20),),
                    child: Container(
                      alignment: Alignment.bottomLeft,
                      height: 150,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(image:NetworkImage(e["img"]),fit: BoxFit.fill)),
                      child:Padding(
                        padding: const EdgeInsets.only(left:8.0),
                        child: Text( e["name"],style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
                      ), 
                    ),
                  ),
                );
              } ).toList(),  // toList -> to convert the map data to list
            ),
          ),
        ],
      ),
 
    );
  }
  void gotodetails(BuildContext context, id) {
   Navigator.pushNamed(context,"place",arguments: id);
  }
  
  }
