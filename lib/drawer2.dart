import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Mydrawers(),
  ));
}

class Mydrawers extends StatelessWidget {
 const Mydrawers({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        title:const Center(child:  Text("DRAWER PAGE")),
      ),
      drawer: Drawer(
        child: Container(
          height:double.infinity,
          decoration:const BoxDecoration(
          gradient: LinearGradient(colors: [
             Color.fromARGB(255, 247, 185, 92),
             Color.fromARGB(255, 240, 167, 59),
            Color.fromARGB(255, 243, 122, 52),
            Color.fromARGB(255, 245, 93, 47),
            Color.fromARGB(255, 243, 56, 56)

          ],begin: Alignment.topCenter,end:Alignment.bottomCenter)
        ),
          child: Padding(
            padding: const EdgeInsets.only(left: 15,right: 15),
            child: ListView(
              children: [
                 const SizedBox(
                  height: 150,
                  child: Row(
                    children:  [
                      CircleAvatar(backgroundImage: AssetImage("assets/image/sundar.jpg"),),
                      SizedBox(width: 10,),
                      Column(crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Sundar Pichai",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),
                          ),
                          Text("CEO of Alphabet inc",style:TextStyle(color:Colors.white ),)
                        ],
                      )
                    ],
                  )
                ),
                 ListTile(
                  leading: Icon(Icons.space_dashboard_outlined,color: Colors.white,),
                  title: Text("Dashboard",style: TextStyle(color: Colors.white)),
                   onTap: () => Navigator.push(context, MaterialPageRoute(builder: ((context) => About())))
                ),
                const ListTile(
                  leading: Icon(Icons.leak_add,color: Colors.white,),
                  title: Text("Leads",style: TextStyle(color: Colors.white)),
                ),
                const ListTile(
                  leading: Icon(Icons.group_add_outlined,color: Colors.white,),
                  title: Text("Clients",style: TextStyle(color: Colors.white)),
                ),
                const ListTile(
                  leading: Icon(Icons.rocket_launch_outlined,color: Colors.white,),
                  title: Text("Projects",style: TextStyle(color: Colors.white)),
                ),
                const ListTile(
                  leading: Icon(Icons.hail,color: Colors.white,),
                  title: Text("Patients",style: TextStyle(color: Colors.white)),
                ),
                const ListTile(
                  leading: Icon(Icons.subject,color: Colors.white,),
                  title: Text("Subscription",style: TextStyle(color: Colors.white)),
                ),
                const ListTile(
                  leading: Icon(Icons.payments,color: Colors.white,),
                  title: Text("Payments",style: TextStyle(color: Colors.white)),
                ),
                const ListTile(
                  leading: Icon(Icons.person,color: Colors.white,),
                  title: Text("Users",style: TextStyle(color: Colors.white)),
                ),
                const ListTile(
                  leading: Icon(Icons.layers_clear_outlined,color: Colors.white,),
                  title: Text("Library",style: TextStyle(color: Colors.white),),
                ),
                const SizedBox(height:30,),

                ElevatedButton(onPressed: (){},
                style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.deepOrange)),
                 child:const Text("LogOut",style: TextStyle(color:Colors.white),))
              ],
                  
            ),
          ),
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class About extends StatelessWidget {
   About({super.key});
String content="Sundar Pichai, in full Pichai Sundararajan, (born June 10, 1972, Madras [now Chennai], Tamil Nadu, India), Indian-born American executive who was CEO of both Google, Inc. (2015), and its holding company, Alphabet Inc. (2019).As a boy growing up in Madras, Pichai slept with his brother in the living room of the cramped family home, but his father, an electrical engineer at the British multinational GEC, saw that the boys received a good education. At an early age Pichai displayed an interest in technology and an extraordinary memory, especially for telephone numbers. After earning a degree in metallurgy (B.Tech., 1993) and a silver medal at the Indian Institute of Technology Kharagpur, he was awarded a scholarship to study at Stanford University (M.S. in engineering and materials science, 1995). He remained in the United States thereafter, working briefly for Applied Materials (a supplier of semiconductor materials) and then earning an M.B.A. (2002) from the Wharton School of the University of Pennsylvania.";
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        title:const Center(child:  Text("AppBar")),
      ),
      drawer: Drawer(
        child: Container(
          height:double.infinity,
          decoration:const BoxDecoration(
          gradient: LinearGradient(colors: [
             Color.fromARGB(255, 247, 185, 92),
             Color.fromARGB(255, 240, 167, 59),
            Color.fromARGB(255, 243, 122, 52),
            Color.fromARGB(255, 245, 93, 47),
            Color.fromARGB(255, 243, 56, 56)

          ],begin: Alignment.topCenter,end:Alignment.bottomCenter)
        ),
          child: Padding(
            padding: const EdgeInsets.only(left: 15,right: 15),
            child: ListView(
              children: [
                 const SizedBox(
                  height: 150,
                  child: Row(
                    children:  [
                      CircleAvatar(backgroundImage: AssetImage("assets/image/sundar.jpg"),),
                      SizedBox(width: 10,),
                      Column(crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Sundar Pichai",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),
                          ),
                          Text("CEO of Alphabet inc",style:TextStyle(color:Colors.white ),)
                        ],
                      )
                    ],
                  )
                ),
                ListTile(
                 
                  leading: Icon(Icons.space_dashboard_outlined,color: Colors.white,),
                  title: Text("Dashboards",style: TextStyle(color: Colors.white)),
                   onTap: () => Navigator.push(context, MaterialPageRoute(builder: ((context) => Mydrawers()))) ,
                ),
                const ListTile(
                  leading: Icon(Icons.leak_add,color: Colors.white,),
                  title: Text("Leads",style: TextStyle(color: Colors.white)),
                ),
                const ListTile(
                  leading: Icon(Icons.group_add_outlined,color: Colors.white,),
                  title: Text("Clients",style: TextStyle(color: Colors.white)),
                ),
                const ListTile(
                  leading: Icon(Icons.rocket_launch_outlined,color: Colors.white,),
                  title: Text("Projects",style: TextStyle(color: Colors.white)),
                ),
                const ListTile(
                  leading: Icon(Icons.hail,color: Colors.white,),
                  title: Text("Patients",style: TextStyle(color: Colors.white)),
                ),
                const ListTile(
                  leading: Icon(Icons.subject,color: Colors.white,),
                  title: Text("Subscription",style: TextStyle(color: Colors.white)),
                ),
                const ListTile(
                  leading: Icon(Icons.payments,color: Colors.white,),
                  title: Text("Payments",style: TextStyle(color: Colors.white)),
                ),
                const ListTile(
                  leading: Icon(Icons.person,color: Colors.white,),
                  title: Text("Users",style: TextStyle(color: Colors.white)),
                ),
                const ListTile(
                  leading: Icon(Icons.layers_clear_outlined,color: Colors.white,),
                  title: Text("Library",style: TextStyle(color: Colors.white),),
                ),
                const SizedBox(height:30,),

                ElevatedButton(onPressed: (){},
                style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.deepOrange)),
                 child:const Text("LogOut",style: TextStyle(color:Colors.white),))
              ],
                  
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          // height: double.infinity,
          child: Column(mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Image.asset("assets/image/pichai.PNG",width: 400,)
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text("Sundar Pichai",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                    ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text(content,style:GoogleFonts.oswald(fontSize:11,color: Colors.black),textAlign:TextAlign.justify ,),
                  )
                ],
          ),
        ),
      ),
    );
  }
}