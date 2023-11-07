
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: farmer(),
    debugShowCheckedModeBanner: false,
  ));
}

class farmer extends StatelessWidget {
  var list1 = ['Vegetables', 'Fruits', 'exotics', 'fresh cut', 'juice', 'meat'];

  var carousal = [
    'https://images.unsplash.com/photo-1610832958506-aa56368176cf?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8ZnJ1aXRzfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60',
    "https://images.unsplash.com/photo-1573246123716-6b1782bfc499?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTB8fGZydWl0c3xlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60",
    'https://images.unsplash.com/photo-1490474418585-ba9bad8fd0ea?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTd8fGZydWl0c3xlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60',
  ];
  List categoryNames = [
    "Offers",
    "Vegetables",
    "Fruits",
    "Exotic",
    "Fresh Cuts",
    "Nutrition Charges",
    "Packed Flavours",
    "Gourmet Salads"
  ];
  List categoryFoodPics = [
    "https://images.unsplash.com/photo-1527264935190-1401c51b5bbc?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8b2ZmZXJzfGVufDB8fDB8fHww&auto=format&fit=crop&w=600&q=60",
    "https://images.unsplash.com/photo-1518843875459-f738682238a6?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8dmVnZXRhYmxlc3xlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=600&q=60",
    "https://images.unsplash.com/photo-1610832958506-aa56368176cf?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8ZnJ1aXRzfGVufDB8fDB8fHww&auto=format&fit=crop&w=600&q=60",
    "https://media.istockphoto.com/id/1311051864/photo/vegetarian-food-in-string-bag.webp?b=1&s=170667a&w=0&k=20&c=49t0iZt_EyDw4RoGx-BjzVClN--WUjAAgK6B-vDC8rQ=",
    "https://images.unsplash.com/photo-1540420773420-3366772f4999?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8N3x8ZnJlc2hjdXRzJTIwdmVnZXRhYmxlc3xlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=600&q=60",
    "https://images.unsplash.com/photo-1490645935967-10de6ba17061?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8bnV0cml0aW9uJTIwY2hhcmdlc3xlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=600&q=60",
    "https://media.istockphoto.com/id/1479804268/photo/salad-in-glass-jar-glass-jars-with-layering-various-salads-for-healthy-lunch-salad.webp?b=1&s=170667a&w=0&k=20&c=DFX8XXYfF8tpV2D6VvlXSXfhAH8fnroORQn_iEIISVQ=",
    "https://media.istockphoto.com/id/935955650/photo/fresh-vegetable-salad-with-grilled-chicken-breast-tomatoes-cucumbers-radish-and-mix-lettuce.webp?b=1&s=170667a&w=0&k=20&c=7JjlieGvlkMeAmBxEDn3pika56oEiwVMYYlGRvZ-6og="
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Text('Farmers fresh zone'),
            actions: [
              Row(
                children: [
                  Icon(Icons.location_on),
                  Text('kochi'),
                  IconButton(
                      onPressed: () {}, icon: Icon(Icons.arrow_drop_down))
                ],
              )
            ],
            backgroundColor: Colors.green,
            bottom: AppBar(
                elevation: 0,
                backgroundColor: Colors.green,
                title: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5)),
                  child: const TextField(
                    decoration: InputDecoration(
                        hintText: 'search', prefixIcon: Icon(Icons.search)),
                  ),
                )),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(6, (index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text(list1[index]),
                      style: ElevatedButton.styleFrom(
                          primary: Colors.green,
                          onPrimary: Colors.black,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20))),
                    ),
                  );
                }),
              ),
            ),
            CarouselSlider.builder(
                itemCount: 3,
                itemBuilder: (context, index, realindex) {
                  return Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(carousal[index]))),
                  );
                },
                options: CarouselOptions(
                  autoPlay: true,
                )),
            const Card(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Icon(
                        Icons.timer,
                        color: Colors.green,
                      ),
                      SizedBox(height: 10),
                      Text('30 min policy')
                    ],
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.phone_iphone,
                        color: Colors.green,
                      ),
                      SizedBox(height: 10),
                      Text('tracaking')
                    ],
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.person,
                        color: Colors.green,
                      ),
                      SizedBox(height: 10),
                      Text('local sourcing')
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                'Shop By Category',
                style: TextStyle(fontSize: 30),
              ),
            ),
            GridView.count(
              padding: EdgeInsets.zero,
              childAspectRatio: .9,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              crossAxisCount: 3,
              children: List.generate(
                  8,
                  (index) => Padding(
                      padding: const EdgeInsets.all(8),
                      child: Container(
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 2.0, // soften the shadow
                                  spreadRadius: 2.0, //extend the shadow
                                  offset: Offset(
                                    5.0,
                                    // Move to right 5  horizontally
                                    2.0, // Move to bottom 5 Vertically
                                  ),
                                )
                              ],
                              //color: Colors.grey,
                              borderRadius: BorderRadius.circular(10),
                              color: Color.fromARGB(255, 243, 245, 243)),
                          child: Column(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10)),
                                child: Image(
                                  image: NetworkImage(categoryFoodPics[index]),
                                  width: double.infinity,
                                  // height: 95,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: Text(categoryNames[index],
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                      fontSize: 13,
                                    ),
                                    textAlign: TextAlign.center),
                              ),
                            ],
                          )))),
            ),
          ]))
        ],
      ),
    );
  }
}