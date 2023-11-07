import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    home: GridView4(),
  ));
}
class GridView4 extends StatelessWidget {
  const GridView4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GridView.extent(maxCrossAxisExtent: 80,
        children:
          List.generate(10, (index) =>
             const Card(child:Center(child: Icon(Icons.houseboat_sharp,size:50)),))
        ,)
    );
  }
}

    