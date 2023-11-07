import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: MyStackp(),
  ));
}
class MyStackp extends StatelessWidget {
  const MyStackp({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Container(
              height: 200,
              width: 200,
              color: Colors.red,
            ),
            Container(
              height: 150,
              width: 150,
              color: Colors.green,
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.yellow,
            )
          ],
        ),
      ),
    );
  }
}