import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:developer';
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
  /// Controller to handle PageView and also handles initial page
  final _pageController = PageController(initialPage: 0);

  /// Controller to handle bottom nav bar and also handles initial page
  final _controller = NotchBottomBarController(index: 0);

  int maxCount = 5;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  /// widget list
  final List<Widget> bottomBarPages = [
    const Page1(),
    const Page2(),
    Myplaylist(),
    const Page3(),
   
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
              /// Provide NotchBottomBarController
              notchBottomBarController: _controller,
              color: Colors.black,
              showLabel: false,
              notchColor: Colors.black87,

              /// restart app if you change removeMargins
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

                ///svg example
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
                /// perform action on tab change and to update pages you can update pages without pages
                log('current selected index $index');
                _pageController.jumpToPage(index);
              },
            )
          : null,
    );
  }
}
// ignore: must_be_immutable
class Myplaylist extends StatefulWidget {
  Myplaylist({super.key});

  @override
  State<Myplaylist> createState() => _MyplaylistState();
}

class _MyplaylistState extends State<Myplaylist> {
  List img=["assets/image/top.png","assets/image/car1.jpg","assets/image/melody.jpg","assets/image/pop.jpg",
  "assets/image/rock.jpg","assets/image/roma.jpg","assets/image/car.jpg","assets/image/gwen-king-3OdajQGd9sk-unsplash.jpg"];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar:  AppBar(
        backgroundColor: Colors.black,
        title:Center(child: Text("PLAYLIST",style: GoogleFonts.luckiestGuy(color: Color.fromARGB(255, 252, 66, 252),fontSize: 25),)) ,
        bottom: 
          AppBar(
            backgroundColor: Colors.black,
            title: Container(
              height: 37,
              child: TextField(
                decoration: InputDecoration(
                  fillColor:Color.fromARGB(69, 247, 81, 247) ,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),),
                  suffixIcon: Icon(Icons.search,color:Color.fromARGB(255, 252, 66, 252) ,),
                  hintText: 'Search..',
                  hintStyle: TextStyle(color: Color.fromARGB(255, 252, 66, 252),fontSize: 12)
                ),
              ),
            ),
          ),
        
      ),
       
      body: 
      GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
         crossAxisCount: 2,
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
        child: ClipOval(child: Image.asset(img[index]))), ),
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
