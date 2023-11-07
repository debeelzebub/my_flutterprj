import 'dart:developer';
import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
home: MyHomePage(),
  ));
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _pageController = PageController(initialPage: 0);

  final _controller = NotchBottomBarController(index: 0);

  int maxCount = 5;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  final List<Widget> bottomBarPages = [
    MyMusic(),
    const Page1(),
    const Page3(),
    const Page2(),
   
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: List.generate(
            bottomBarPages.length, (index) => bottomBarPages[index]),
      ),
      extendBody: true,
      bottomNavigationBar: (bottomBarPages.length <= maxCount)
          ? AnimatedNotchBottomBar(
              notchBottomBarController: _controller,
              color: Colors.black,
              showLabel: false,
              notchColor: Colors.black87,

              removeMargins: false,
              bottomBarWidth: 500,
              durationInMilliSeconds: 300,
              bottomBarItems:const [
                 BottomBarItem(
                  inActiveItem: Icon(
                    Icons.home_filled,
                    color: Color.fromARGB(255, 245, 246, 247),
                  ),
                  activeItem: Icon(
                    Icons.home_filled,
                    color: Color.fromARGB(255, 239, 68, 255),
                  ),
                  itemLabel: 'Page 1',
                ),
                 BottomBarItem(
                  inActiveItem: Icon(
                    Icons.search,
                    color:  Color.fromARGB(255, 245, 246, 247),
                  ),
                  activeItem: Icon(
                    Icons.search,
                    color:Color.fromARGB(255, 239, 68, 255),
                  ),
                  itemLabel: 'Page 2',
                ),
                BottomBarItem(
                  inActiveItem: Icon(Icons.queue_music_sharp,color: Colors.white,),
                  activeItem:Icon(Icons.queue_music_sharp,color: Color.fromARGB(255, 239, 68, 255),),
                  itemLabel: 'PlayList',
                ),
                
                 BottomBarItem(
                  inActiveItem: Icon(
                    Icons.menu_rounded,
                    color: Colors.white,
                  ),
                  activeItem: Icon(
                    Icons.settings,
                    color: Color.fromARGB(255, 239, 68, 255),
                  ),
                  itemLabel: 'Page 3',
                ),
                
              ],
              onTap: (index) {
                log('current selected index $index');
                _pageController.jumpToPage(index);
              },
            )
          : null,
    );
  }
}

// ignore: must_be_immutable
class MyMusic extends StatelessWidget {
 MyMusic({super.key});

 List img=["assets/image/top.png","assets/image/car1.jpg","assets/image/melody.jpg","assets/image/pop.jpg",
  "assets/image/rock.jpg","assets/image/roma.jpg","assets/image/car.jpg","assets/image/gwen-king-3OdajQGd9sk-unsplash.jpg"];
 List titlee=["Hero","Unholy","Lift me up","Depression","i'm good","Shape of you","Hero","Broken Angle"];
 List subtitlee=["Tailor Swift","Rihana","Sam Smith","Rihanna","DAx","Ed shareen","Hero","Broken Angle"];
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.black,
      appBar:  AppBar(
        backgroundColor: Colors.black,
        title:Center(child: Text("Musify",style: GoogleFonts.luckiestGuy(color: Color.fromARGB(255, 252, 66, 252),fontSize: 25),)) ,
               
      ),
       
      body: 
      ListView(
        children: [
          const Text(" Suggested Playlist",style: TextStyle(fontSize: 14,color:Color.fromARGB(255, 252, 66, 252),fontWeight: FontWeight.bold ),),
          const SizedBox(height: 5,),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height:150,
            child: GridView.builder(
              scrollDirection: Axis.horizontal,
              gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
                crossAxisSpacing: 3,
                mainAxisSpacing: 8,
                // childAspectRatio: (3/1)
              ),
              itemCount: img.length,
              itemBuilder: (context, index) =>
             Card(
                shadowColor:Color.fromARGB(255, 252, 66, 252), 
                elevation:10,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                color: Colors.black,
                child: Image.asset(img[index])
              ), 
            ),
          ),
          const SizedBox(height: 15,),
          const Text(" Recommended for you",style: TextStyle(fontSize: 14,color:Color.fromARGB(255, 252, 66, 252),fontWeight: FontWeight.bold ),),
          const SizedBox(height: 5,),
           SizedBox(
            height: MediaQuery.of(context).size.height,
            child: ListView.builder(
              itemCount: img.length,
              itemBuilder:  (context, index) {
                return ListTile(
                  leading: Image.asset(img[index],width:30,height: 50,),
                  title: Text(titlee[index],style:const TextStyle(color: Color.fromARGB(255, 100, 30, 100),fontSize:13,fontWeight: FontWeight.bold),),
                  subtitle: Text(subtitlee[index],style:const TextStyle(color: Colors.white),),
                  trailing:const Wrap(
                    children: [
                    Icon(Icons.star_border,color: Color.fromARGB(255, 252, 66, 252),size: 20,),
                    SizedBox(width: 5,),
                    Icon(Icons.download_outlined,color: Color.fromARGB(255, 252, 66, 252),size: 20,)
                  ],),
                );
            }),
          )
        ],
      ),
    );
  }
}
class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.yellow, child: const Center(child: Text('Page 1')));
  }
}

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.green, child: const Center(child: Text('Page 2')));
  }
}

class Page3 extends StatelessWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.red, child: const Center(child: Text('Page 3')));
  }
}