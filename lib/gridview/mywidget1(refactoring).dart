import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Mywidget extends StatelessWidget{
  final Color? bgcolors;
  final Image? image;
  VoidCallback? onpress;
  Widget? ladel;
  Mywidget({required this.bgcolors,required this.image, this.ladel,this.onpress});
 @override
  Widget build(BuildContext context){
   return Scaffold(
     body: Card(
      
       color: bgcolors,
       child: ListTile(
         leading: image,
         trailing: ladel,
       )
     ),
   );
  }

}