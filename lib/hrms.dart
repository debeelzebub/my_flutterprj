 // drawer: Drawer(
      //   child: Container(
      //     width: 50,
      //     height: double.infinity,
      //     decoration: const BoxDecoration(
      //         gradient: LinearGradient(colors: [
      //       Color.fromARGB(255, 36, 36, 35),
      //       Color.fromARGB(255, 17, 17, 17),
      //       Color.fromARGB(255, 10, 10, 10),
      //       Color.fromARGB(255, 8, 3, 2),
      //       Color.fromARGB(255, 8, 4, 2)
      //     ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
      //     child: Padding(
      //       padding: const EdgeInsets.only(left: 15, right: 15),
      //       child: ListView(
      //         children: [
      //           const SizedBox(
      //               height: 150,
      //               child: Row(
      //                 children: [
      //                   CircleAvatar(
      //                       backgroundColor: Colors.white,
      //                       radius: 40,
      //                       child: Icon(
      //                         Icons.person,
      //                         size: 32,
      //                         color: Colors.black,
      //                       )),
      //                   SizedBox(
      //                     width: 10,
      //                   ),
      //                   Column(
      //                     crossAxisAlignment: CrossAxisAlignment.start,
      //                     mainAxisAlignment: MainAxisAlignment.center,
      //                     children: [
      //                       Text(
      //                         "UserName",
      //                         style: TextStyle(
      //                             fontWeight: FontWeight.bold,
      //                             color: Colors.white),
      //                       ),
      //                       Text(
      //                         "your@gmail.com",
      //                         style: TextStyle(color: Colors.white),
      //                       )
      //                     ],
      //                   )
      //                 ],
      //               )),
      //           Divider(),
      //           ListTile(
      //             leading: Icon(
      //               Icons.space_dashboard_outlined,
      //               color: Colors.white,
      //             ),
      //             title:
      //                 Text("Dashboard", style: TextStyle(color: Colors.white)),
      //             //  onTap: () => Navigator.push(context, MaterialPageRoute(builder: ((context) => About())))
      //           ),
      //           const ListTile(
      //             leading: Icon(
      //               Icons.calendar_month_outlined,
      //               color: Colors.white,
      //             ),
      //             title:
      //                 Text("Attendance", style: TextStyle(color: Colors.white)),
      //           ),
      //           ListTile(
      //             leading: Icon(
      //               Icons.add_comment_outlined,
      //               color: Colors.white,
      //             ),
      //             title: Text("Leave", style: TextStyle(color: Colors.white)),
      //             onTap: () => Navigator.of(context).push(
      //                 MaterialPageRoute(builder: (context) => MyLeaveApply())),
      //           ),
      //           const ListTile(
      //             leading: Icon(
      //               Icons.check_circle_outline,
      //               color: Colors.white,
      //             ),
      //             title: Text("Leave Approval",
      //                 style: TextStyle(color: Colors.white)),
      //           ),
      //           const ListTile(
      //             leading: Icon(
      //               Icons.receipt_long_outlined,
      //               color: Colors.white,
      //             ),
      //             title: Text("Salary Slip",
      //                 style: TextStyle(color: Colors.white)),
      //           ),
      //           const ListTile(
      //             leading: Icon(
      //               Icons.password_outlined,
      //               color: Colors.white,
      //             ),
      //             title: Text("Change Password",
      //                 style: TextStyle(color: Colors.white)),
      //           ),
      //           ListTile(
      //             leading: Icon(
      //               Icons.fingerprint_outlined,
      //               color: Colors.white,
      //             ),
      //             title: Text("Punch", style: TextStyle(color: Colors.white)),
      //             onTap: () async { await availableCameras().then(
      //           (value) => Navigator.push(
      //             context,
      //             MaterialPageRoute(
      //               builder: (context) => CameraPage(cameras: value, eid: uname,cid: cid,),
      //             ),
      //           ),
      //         );}
      //           ),
      //           const ListTile(
      //             leading: Icon(
      //               Icons.share_outlined,
      //               color: Colors.white,
      //             ),
      //             title: Text("Rate the app",
      //                 style: TextStyle(color: Colors.white)),
      //           ),
      //           const ListTile(
      //             leading: Icon(
      //               Icons.info_outline,
      //               color: Colors.white,
      //             ),
      //             title: Text(
      //               "About Us",
      //               style: TextStyle(color: Colors.white),
      //             ),
      //           ),
      //           const SizedBox(
      //             height: 30,
      //           ),
      //           ElevatedButton(
      //               onPressed: () {
      //                 pref.setBool('newy', true);
      //                 Navigator.of(context).pushReplacement(
      //                     MaterialPageRoute(builder: (context) => MyLogin()));
      //               },
      //               style: ButtonStyle(
      //                   backgroundColor: MaterialStateProperty.all<Color>(
      //                       Colors.black)),
      //               child: const Text(
      //                 "LogOut",
      //                 style: TextStyle(color: Colors.white),
      //               ))
      //         ],
      //       ),
      //     ),
      //   ),
      // ),
      // body: ListView(
      //   children: [
        // Column(
          // children: [
            // Padding(
            //   padding: const EdgeInsets.only(
            //       top: 50, bottom: 50, right: 10, left: 10),
            //   child: Container(
            //       height: 200,
            //       decoration: BoxDecoration(
            //         borderRadius: BorderRadius.circular(20),
            //         gradient: LinearGradient(colors: [
            //           Color.fromARGB(255, 12, 7, 4),
            //           Color.fromARGB(255, 14, 9, 7),
            //           Color.fromARGB(255, 7, 7, 7)
            //         ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
            //         boxShadow: [
            //           BoxShadow(
            //             color: Color.fromARGB(143, 14, 13, 13),
            //             offset: Offset(0, 2),
            //             blurRadius: 25.0,
            //             // blurStyle: BlurStyle.inner
            //           )
            //         ],
            //       ),
            //       child: Padding(
            //         padding: const EdgeInsets.only(right: 6, left: 10),
            //         child: Row(
            //           children: [
            //             CircleAvatar(
            //               radius: 60,
            //               backgroundColor: Colors.white,
            //               child: Image.asset(
            //                 'assets/image/frnt-removebg-preview.png',
            //                 height: 110,
            //                 width: 150,
            //               ),
            //             ),
            //             Column(
            //               children: [
            //                 SizedBox(
            //                   height: 30,
            //                 ),
            //                 Text(
            //                   "Welcome ",
            //                   style: TextStyle(
            //                       color: Colors.white,
            //                       fontSize: 20,
            //                       shadows: [
            //                         Shadow(
            //                             color: Colors.white, blurRadius: 15.0)
            //                       ]),
            //                 ),
            //                 Text(
            //                   "$uname",
            //                   style:
            //                       TextStyle(color: Colors.white, fontSize: 16),
            //                 ),
            //                 Row(
            //                   mainAxisAlignment: MainAxisAlignment.center,
            //                   children: [
            //                     SizedBox(
            //                         height: 60,
            //                         width: 120,
            //                         child: Card(
            //                           child: Column(
            //                             children: [
            //                               Text('First Punch'),
            //                               Text('date  time')
            //                             ],
            //                           ),
            //                         )),
            //                     SizedBox(
            //                         height: 60,
            //                         width: 120,
            //                         child: Card(
            //                           child: Column(
            //                             children: [
            //                               Text('First Punch'),
            //                               Text('date  time')
            //                             ],
            //                           ),
            //                         )),
            //                   ],
            //                 )
            //               ],
            //             ),
            //           ],
            //         ),
            //       )),
            // )
           
        //   ],
        // ),
      // ]),