import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyCarosel(),
  ));
}
// ignore: must_be_immutable
class MyCarosel extends StatelessWidget {
MyCarosel({super.key});

  List img=["assets/image/apple.jpg","assets/image/banana.jpg","assets/image/Dragon-Fruit.jpg","assets/image/guava.jpg",
  "assets/image/mango.jpg","assets/image/orange.jpg","assets/image/pappaya.jpg","assets/image/pinapple.jpg","assets/image/rambutan.jpg",
  "assets/image/strawberry.jpg","assets/image/watermelon.jpg"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CarouselSlider(
        items:List.generate(11, (index) => 
        Card(
          child: Container(
            color: Colors.indigo,
            child: Image.asset(img[index],height: double.infinity,width: double.infinity,)),
        )) ,
      // [
      //   Container(
      //     decoration:const BoxDecoration(
      //       image: DecorationImage(image: NetworkImage("https://images.unsplash.com/photo-1567095761054-7a02e69e5c43?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80"))
      //     ),
      //   ),
      //   Container(decoration:const BoxDecoration(image: DecorationImage(image: NetworkImage("https://images.unsplash.com/photo-1555939594-58d7cb561ad1?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8Zm9vZHxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60"))),),
      //   Container(decoration:const BoxDecoration(image: DecorationImage(image: NetworkImage("https://images.unsplash.com/photo-1494633114655-819eb91fde40?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mzl8fGFuaW1lfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60"))),)
      // ], 
      options: CarouselOptions(
        height: double.infinity,
        aspectRatio: 16/9,
        viewportFraction: .8,
        initialPage:0,
        enableInfiniteScroll: true,
        autoPlay: true,
        autoPlayInterval: Duration(seconds:2),
        autoPlayCurve: Curves.easeInOutCubicEmphasized,
        enlargeCenterPage: true,
        enlargeFactor: .3,
        scrollDirection: Axis.vertical,
      )),
    );
  }
}