// // import 'dart:html';
// import 'dart:io';

// import 'package:firebase_core/firebase_core.dart';
// import 'package:firebase_storage/firebase_storage.dart';
// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:path/path.dart' as path;

// Future<void> main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp();
//   runApp(MaterialApp(
//     home:MyFirestorage(),
//   ));
// }

// class MyFirestorage extends StatefulWidget{
//   @override
//   State<StatefulWidget> createState()=>MyFirestorageState();
// }

// class MyFirestorageState extends State {

//   FirebaseStorage storage =FirebaseStorage.instance;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Storage"),
//       ),
//       body: Column(
//         children: [
//           ElevatedButton.icon(onPressed:()=>upload("camera"),
//            icon:Icon(Icons.camera_alt), label: Text("Camera")),
//           ElevatedButton.icon(onPressed: ()=>upload("gallery"),
//            icon:Icon(Icons.image), label: Text("image")),

//            Expanded(child: FutureBuilder(
//             // if firebase connection is successsful load data from here
//             future:loaddata(),
//             builder: ((context,AsyncSnapshot<List<Map<String,dynamic>>> snapshot){  //Asyncsnapshot to get connectoion from stroage
//             if(snapshot.connectionState==ConnectionState.done){
//             return ListView.builder(itemBuilder: (context,index){

//             });
//             }else{
//               return const Center(child:CircularProgressIndicator());
//             }

//             } ))
//            )
       
//         ],
//       ),
//     );
//   }
  
//   Future<List<Map<String,dynamic>>>loaddata()asycn {
//   List<Map<String,dynamic>> image=[];
//   final
// }
  
//  Future<void> upload(String s)async {
//   final img =ImagePicker();
//   XFile? imgpicker;

//   try{
//     imgpicker = await img.pickImage(source: imgpicker=='camera'?ImageSource.camera:ImageSource.gallery,
//     maxWidth: 1200);
//     final String filename = path.basename(imgpicker!.path);
//     File imagefile = File(imgpicker.path); //paltform independend path where operation can be performed
//   try{
//     await storage.ref(filename).putFile(imagefile);
//   }on FirebaseException catch (e){
//     print(e);
//   }
//   }
//     catch (e){
//     print(e);
//   }
//  }
// }