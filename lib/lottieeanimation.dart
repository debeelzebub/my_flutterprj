import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void main(){
  runApp(MaterialApp(
    home: LottieeAnime(),
  ));
}
class LottieeAnime extends StatelessWidget {
  const LottieeAnime({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(child:
        Lottie.asset("assets/animation/cut.json")
        //  Lottie.network("https://lottie.host/e6298995-42a9-473c-81eb-af62ddccdba2/AndGTzqz1w.json")
         ),
      ),
    );
  }
}