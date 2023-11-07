import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
void main(){
  runApp( MaterialApp(
    home: StagGrid(),
  ));
}
class StagGrid extends StatelessWidget {
  const StagGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text("Staggered Grid View")
        ),
      body:Container(
        child: StaggeredGrid.count(crossAxisCount: 3,
        children: [
          StaggeredGridTile.count(
              crossAxisCellCount: 3,
              mainAxisCellCount: 8, child: Image(image: AssetImage("my_flutterprj/assets/image/gwen-king-3OdajQGd9sk-unsplash.jpg"))),
        ],),
       ),
    );
  }
}