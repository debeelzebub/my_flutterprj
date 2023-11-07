import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    home: GridView1(),
  ));
}
class GridView1 extends StatelessWidget {
  const GridView1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.custom(
          gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20),

          childrenDelegate: SliverChildBuilderDelegate((context, index) =>
          const Padding(
            padding: EdgeInsets.all(8.0),
            child:  Card(child: Center(child: Text("HELLO")),),
          ))
      )
    );
  }
}

    