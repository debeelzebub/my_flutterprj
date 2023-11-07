import 'package:flutter/material.dart';
import 'package:my_flutterprj/datapassing/dummydata.dart';
import 'package:my_flutterprj/datapassing/prdtdetails.dart';
void main(){
  runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: Myprdtlist(),
  routes: {
    "details":(context) => MyPrdtdetails(),
  },
  ));
}

class Myprdtlist extends StatelessWidget {
  const Myprdtlist({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        padding: EdgeInsets.all(8.0),
        children: prdt.map((e) {             //e -> each single list in the list, List.map -> iterate all elements in the list as map
          return ListTile(
            leading: Image.network(e["img"]),
            title: Text(e["Name"]),
            onTap:()=> gotodetails(context, e["Id"]),
          );
        } ).toList(),  // toList -> to convert the map data to list
      ),
 
    );
  }
  
  void gotodetails(BuildContext context, id) {
   Navigator.pushNamed(context,"details",arguments: id);
  }

}