import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
   home: MyExpandeds(),
  ));
}

class MyExpandeds extends StatelessWidget {
  const MyExpandeds({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Expanded Widget"),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Text("heloo",style: TextStyle(fontSize: 40),),
            Expanded(child: Image.asset("assets/image/gwen-king-3OdajQGd9sk-unsplash.jpg")),
            Expanded(child: Image.asset("assets/image/gwen-king-3OdajQGd9sk-unsplash.jpg")),
          ],
        ),
      ),
    );
  }
}