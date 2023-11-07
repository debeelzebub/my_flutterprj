import 'package:flutter/material.dart';
import 'package:my_flutterprj/assignment/tourismdata.dart';

class MyData extends StatelessWidget {
  const MyData({super.key});

  @override
  Widget build(BuildContext context) {
    final id=ModalRoute.of(context)?.settings.arguments;
    final plac= place.firstWhere((element) => element['id']==id);
    return Scaffold(
      
      body: ListView( 
        children: [
          SizedBox(
            height: 170,
            child: Image.network(plac["img1"],
            width: double.infinity,
            fit: BoxFit.cover,)
          ),
          const SizedBox(height: 6,),
          Text(plac["name"],style:const TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(plac["desc"],style:const TextStyle(color: Colors.black,fontWeight: FontWeight.w500),textAlign:TextAlign.justify ,),
          ),
          const Text("Place to visit",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
          // SizedBox(height:5,),
          SizedBox(
            height: 110,
            child: GridView.count(crossAxisCount: 3,
            mainAxisSpacing: 8,
            crossAxisSpacing: 5,
            physics:const NeverScrollableScrollPhysics(),
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: SizedBox.fromSize(
                  size:const Size.fromRadius(48),
                  child: Image.network(plac["img2"],fit: BoxFit.fill,),
                ),
              ),
               ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: SizedBox.fromSize(
                  size:const Size.fromRadius(48),
                  child: Image.network(plac["img3"],fit: BoxFit.fill,),
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: SizedBox.fromSize(
                  size:const Size.fromRadius(48),
                  child: Image.network(plac["img4"],fit: BoxFit.fill,),
                ),
              ),
          
            ],
            ),
          ),
          const SizedBox(height:10,),
          ElevatedButton(onPressed: (){},
           style:ButtonStyle( 
             backgroundColor: MaterialStateProperty.all( const Color.fromARGB(255, 54, 28, 100)),
             padding: MaterialStateProperty.all(const EdgeInsets.symmetric(vertical:15,horizontal:90)),
            ) ,
            child:const Text("Press to Explore")
          ),
        ],
      ),
    );
  }
}