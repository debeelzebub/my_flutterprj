import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyHotel(),
  ));
}

class MyHotel extends StatelessWidget {
  MyHotel({super.key});
 String about="Set along the Kerala Backwaters, this upscale hotel is 7 km from Puthuvype Beach along the Laccadive Sea and 4 km from the Ernakulam Town North train station.Featuring floor-to-ceiling windows with city or backwater views, the contemporary rooms have free Wi-Fi, flat-screen TVs, and tea and coffeemaking facilities. Suites add living areas and kitchenettes or terraces. Club rooms and suites offer private-lounge access, breakfast and evening refreshments. Villas provide private plunge pools.Parking is included. Amenities consist of a lounge, a rooftop bar and a restaurant, as well as a spa, a 24/7 gym and an outdoor pool with a kids section";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height*1.5,
          child: Column(
            // mainAxisSize: MainAxisSize.max,
            children: [
              Stack(
                children: [
                  Container(
                    
                    width: MediaQuery.of(context).size.width,
                    child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT6BkSqsxXHWmqeJbEMCNX_BitdIu7rFfadAA&usqp=CAU",
                    fit: BoxFit.cover,),
                  ),
                  Positioned(
                    top: 180,
                    child:Padding(
                      padding: const EdgeInsets.all(13),
                      child: SizedBox(
                        width:380,
                        child: Column(crossAxisAlignment: CrossAxisAlignment.start,                        children: [
                            Text("Grand Hyatt Kochi Bolgatty",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                            SizedBox(height:3,),
                            Text("Kochi,Kerala",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold)),
                            SizedBox(height:5,),
                            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: 30,
                                  width: 110,
                                  decoration: BoxDecoration(
                                    color: Color.fromARGB(137, 255, 255, 255),
                                    borderRadius: BorderRadius.circular(20)
                                  ),
                                  child: Center(child: Text("8.4/8.5 Reviews",style: TextStyle(color: Colors.white),)),
                                ),
                                Icon(Icons.favorite_border,color: Colors.white,)
                                          
                              ],
                            )
                            
                          ],
                        ),
                      ),
                    ) )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(17),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      child: Column(mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          RatingBar(
                            initialRating:3.5,
                            
                            direction: Axis.horizontal,
                             allowHalfRating: true,
                            itemCount: 5,
                            minRating: 1,
                            itemSize: 25,
                            ratingWidget:RatingWidget(
                              full: Icon(Icons.star,color: Colors.purple,size: 5,),
                               half: Icon(Icons.star_half,color: Colors.purple,), 
                              empty: Icon(Icons.star)),
                             onRatingUpdate:  (rating) {
                               print(rating);
                            },
                            itemPadding: EdgeInsets.symmetric(horizontal:0.1)
                          ),
                          Row(
                            children: [
                              Icon(Icons.location_on),
                              Text("8km to LuluMall",),
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      child: Column(mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("₹200",style: TextStyle(fontSize: 20,color: Colors.purple,fontWeight: FontWeight.bold),),
                          Text("/per night")
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)
                ),
                child: ElevatedButton(onPressed: (){}, 
                style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.purple),
                padding: MaterialStatePropertyAll(EdgeInsets.symmetric(
                  horizontal:110,
                  vertical: 15
                ))),
                child: Text("Book Now",style:TextStyle(fontSize: 20,color: Colors.white) ,)),
              ),
              SizedBox(height: 15,),
        
              Padding(
                padding: const EdgeInsets.all(10),
                child: Column(mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text("Grand Hyatt Kochi Bolgatty",style: TextStyle(fontSize:20,fontWeight: FontWeight.bold),)),
                    SizedBox(height: 8,),
                    Text(about,textAlign: TextAlign.justify,style: TextStyle(fontSize: 14),),
                    SizedBox(height:4,),
                    Text(about,textAlign: TextAlign.justify,style: TextStyle(fontSize: 14),)
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
             unselectedLabelStyle: const TextStyle(color: Colors.purple, fontSize: 14),
      
      fixedColor: Colors.purple,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.search,color: Colors.purple,),
            label: 'Search'
            ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite,color: const Color.fromARGB(164, 0, 0, 0),),
            label: 'favorite'),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings,color: Color.fromARGB(139, 0, 0, 0),),
            label: 'settings'),
        ]
        ),
    );
    
  }
}