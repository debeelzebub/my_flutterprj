import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ListViewfruit3(),
  ));
}

// ignore: must_be_immutable
class ListViewfruit3 extends StatelessWidget {

  List fruit=["Apple","Banana","Dragon Fruit","Guava","Mango","Orange",
  "Pappaya","Pinapple","Rambutan","Strawberry","Watermelon"];
  List img=["assets/image/apple.jpg","assets/image/banana.jpg","assets/image/Dragon-Fruit.jpg","assets/image/guava.jpg",
  "assets/image/mango.jpg","assets/image/orange.jpg","assets/image/pappaya.jpg","assets/image/pinapple.jpg","assets/image/rambutan.jpg",
  "assets/image/strawberry.jpg","assets/image/watermelon.jpg"];
  List unit=["Kg","Doz","pc","kg","Doz","Doz",
  "Pc","Pc","Kg","Kg","Pc"];
  List price=["130","100","80","120","85","90",
  "50","65","110","150","75"];

  ListViewfruit3({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepOrangeAccent,
          title:const Center(child: Text("Product List")),
          actions: [
           Row(
             children: [
               Badge.count(
                backgroundColor: Colors.amber,
                count: 2,
               child:const Icon(Icons.shopping_cart),),
               const SizedBox(width: 10,),
             ],
           ),
           
          ],
        ),
        body: ListView.builder(
          itemCount: fruit.length,
          itemBuilder: (context, index) {
          return Card(
            
             child: ListTile(
              leading: Container(child: Image.asset(img[index],height: 100,width: 100,)),
              title: Column(mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.start,
                children:[
                  Row(
                    children: [
                      Text("Name : ",style: TextStyle(fontSize:12,),),
                      Text(fruit[index],style: TextStyle(fontSize:12,fontWeight: FontWeight.bold),)
                    ],
                  ),
                  Row(
                    children: [
                      Text("Unit : ",style: TextStyle(fontSize: 12),),
                      Text(unit[index],style: TextStyle(fontSize:12,fontWeight: FontWeight.bold),)
                    ],
                  ),
                  Row(
                    children: [
                      Text("Price : ",style: TextStyle(fontSize: 12),),
                      Text(price[index],style: TextStyle(fontSize:12,fontWeight: FontWeight.bold),)
                    ],
                  ),
                ],
              ),
              trailing: ElevatedButton(onPressed: (){},
              style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color?>(Colors.deepOrangeAccent)),
               child:const Text("Add To Cart")),
             ),
          );
        } ),
    );
  }
}