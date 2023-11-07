import 'package:flutter/material.dart';

class MyHotelbook extends StatelessWidget {
  const MyHotelbook({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Column(
          children: [
            Text('Hello @rjun',style: TextStyle(color:Color.fromARGB(223, 49, 49, 49))),
            Text('Find Your Favouriate Hotel',style: TextStyle(color: Colors.black),)
          ],
        ),
        actions: [
          
        ],
      ),
    );
  }
}