import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ListView3(),
  ));
}

// ignore: must_be_immutable
class ListView3 extends StatelessWidget {

  List mnth=["January","February","March","April","May","June","July","August","September","October","November","December"];

  ListView3({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("List Separator"),
        ),
        body: ListView.separated(
            itemCount:mnth.length,
            itemBuilder: (contex, index) {
              return  Container(
                height: 40,
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.only(top:5),
                    child: Text("  ${mnth[index]}",style: TextStyle(fontSize: 15),),
                  ),
                ),
              );
            },
            separatorBuilder: (context, index) {
              if (index % 4 == 0) {
                return const Card(
                  color: Colors.red,
                  child: ListTile(title: Text("Advertisment",style:TextStyle(color: Colors.white),)),
                );
              }
              return SizedBox();
            },
            ));
  }
}