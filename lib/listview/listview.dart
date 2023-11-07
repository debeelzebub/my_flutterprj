import 'package:flutter/material.dart';

void main(){
  runApp( MaterialApp(
  debugShowCheckedModeBanner: false,
  home: Myapp(),
  ));
}
// ignore: must_be_immutable
class Myapp extends StatelessWidget {
  Myapp({super.key});

var name=["anu","kiran","niya","suku","aathuz","anu","kiran","niya","suku","aathuz","anu","kiran","niya","suku","aathuz","anu","kiran","niya","suku","aathuz"];

var image=["assets/image/apple.png","assets/icons/icons8-cat-100.png",
"assets/image/gwen-king-3OdajQGd9sk-unsplash.jpg","assets/image/frnt.jpg",
"assets/image/apple.png","assets/icons/icons8-cat-100.png",
"assets/image/gwen-king-3OdajQGd9sk-unsplash.jpg","assets/image/frnt.jpg",
"assets/image/apple.png","assets/icons/icons8-cat-100.png",
"assets/image/gwen-king-3OdajQGd9sk-unsplash.jpg","assets/image/frnt.jpg",
"assets/image/apple.png","assets/icons/icons8-cat-100.png",
"assets/image/gwen-king-3OdajQGd9sk-unsplash.jpg","assets/image/frnt.jpg",
"assets/image/apple.png","assets/icons/icons8-cat-100.png",
"assets/image/gwen-king-3OdajQGd9sk-unsplash.jpg","assets/image/frnt.jpg"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListView"),
      ),
      body: ListView(
        children: List.generate(20, (index) => 
        Card(
          child: ListTile(
            leading:CircleAvatar(backgroundImage: AssetImage(image[index]),), //Image.asset(image[index]),
            title: Text(name[index]),
            subtitle: Text("hello"),
            trailing: Text("11:20 am"),
          ),
        )),
      ),
    );
  }
}