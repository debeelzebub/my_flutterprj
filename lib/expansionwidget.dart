import 'package:flutter/material.dart';
// import 'package:expansion_tile_card/expansion_tile_card.dart';

void main(){
  runApp(MaterialApp(
   home: MyexPan(),
  ));
}

// ignore: must_be_immutable
class MyexPan extends StatelessWidget {
 MyexPan({super.key});
  List colorss =[Colors.red,Colors.green,Colors.amber];
  List name=["Red","Green","amber"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Expansion Tile"),
      ),

      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/image/gwen-king-3OdajQGd9sk-unsplash.jpg"),
          fit: BoxFit.fill),
          
        ),
        child: ExpansionTile(title: Text("Colors"),
        backgroundColor: Colors.black12,
        subtitle: Text("List of Colors"),
        children: List.generate(3, (index) => 
        Column(
          children: [
            ListTile(
                  leading: CircleAvatar(backgroundColor: colorss[index],),
                  title: Text(name[index]),
            ),
           
            
          ],
        )),
        ),
      ),

    );
  }
}