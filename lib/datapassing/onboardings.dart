import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:lottie/lottie.dart';
import 'package:my_flutterprj/assignment/signup.dart';
import 'package:my_flutterprj/login.dart';


void main(){
  runApp(MaterialApp(
    home: MyBoard(),
  ));
}

class MyBoard extends StatelessWidget {
  const MyBoard({super.key});

  @override
  Widget build(BuildContext context) {

    PageDecoration pageDecoration=PageDecoration(
      titleTextStyle: TextStyle(
        color: Colors.pink
      ),
      bodyTextStyle: TextStyle(
        fontSize: 20,
        color: Colors.red
      ),
      imagePadding: EdgeInsets.all(2),
      boxDecoration: BoxDecoration(
        gradient: LinearGradient(colors: [
           Colors.yellow,
          Colors.amber,
          Color.fromARGB(255, 134, 240, 14),
          
          Color.fromARGB(255, 134, 240, 14),
          Color.fromARGB(255, 160, 250, 57),
          Color.fromARGB(255, 112, 250, 117), 
        ],begin: Alignment.centerLeft,end:Alignment.bottomCenter)
      )
    );
    return IntroductionScreen(    // no need for scaffold
      pages: [
       PageViewModel(
        decoration: pageDecoration,
        title: "Page 1",
        body: "hello wellcome",
        image: Align(
          alignment: Alignment.center,
          child: Lottie.asset("assets/animation/cut.json")
        ),
       ),
       PageViewModel(
        decoration: pageDecoration,
        title: "Page 2",
        body: "hello wellcome",
        image: Align(
          alignment: Alignment.center,
          child: Image.asset("assets/image/car.jpg")
        ),
       ),
       PageViewModel(
        decoration: pageDecoration,
        title: "Page 3",
        body: "hello wellcome",
        image: Align(
          alignment: Alignment.center,
          child: Image.asset("assets/image/melody.jpg")
        ),
       ),
      
      ],
      onDone: ()=>Navigator.of(context).push(MaterialPageRoute(builder: ((context) => MyLogin())),),
      onSkip:()=>Navigator.of(context).push(MaterialPageRoute(builder: ((context) => Myreg())), ),
      showSkipButton: true,
      skip: Text("SKip"),
      next:Text("Next") ,
      done: Text("done"),
      dotsDecorator: DotsDecorator(
        size: Size(10,5),
        color: Colors.teal,
        activeSize: Size(5, 15),
        // activeColors: [Colors.white,
        // Colors.purple],
        activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        
      ),
    );
  }
}