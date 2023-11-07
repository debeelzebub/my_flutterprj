import 'package:flutter/material.dart';

import 'db.dart';

void main(){
  runApp(MaterialApp(
    home: MySqlite(),
  ));
}

class MySqlite extends StatefulWidget {
  const MySqlite({super.key});

  @override
  State<MySqlite> createState() => _MySqliteState();
}

class _MySqliteState extends State<MySqlite> {

  final name = TextEditingController();
  final phn = TextEditingController();
  var isloading = true;     // intially ui is in loading state
  List<Map<String,dynamic>> contacts =[];  // empty list for storing data from db


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loaddata();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),

    
     floatingActionButton: FloatingActionButton(onPressed: ()=>showSheet(null),
      child: IconButton(onPressed: (){}, icon: Icon(Icons.add)),),
      body: isloading?
      Text("No Data"):
      ListView.builder(
        itemCount: contacts.length,
        itemBuilder: (context, index) =>
        ListTile(
          title: Text(contacts[index]["name"]),
          subtitle: Text(contacts[index]["phone"]),
          trailing: Wrap(
            children: [
              IconButton(onPressed: (){
                setState(() {
                  showSheet(contacts[index]["id"]);
                });
              }, icon:Icon(Icons.edit)),
              IconButton(onPressed: (){
                setState(() {
                  datadelete(contacts[index]["id"]);
                });
              }, icon:Icon(Icons.delete)),
            ],
            
          ),
        ),
       ),
    );

  }
  
  showSheet(int? id) {
    if (id != null) {
      //element['id']  = id from database
      //firstWhere - first element from contacts that satisfy this condition - element['id'] == id
      final data_from_that_id = contacts.firstWhere((element) => element['id'] == id );
      name.text = data_from_that_id['name'];
      phn.text= data_from_that_id['phone'];
    }
    
  showModalBottomSheet(
    isScrollControlled: true,
    elevation: 10,
  context: context, 
  builder:(context)=>
   Container(
  
    padding: EdgeInsets.only(
      top: 15,
      left: 10,
      right: 10,
      bottom: MediaQuery.of(context).viewInsets.bottom+120,
    ),
    child: Column(
      children: [
        TextField(
          controller: name,
          decoration:const InputDecoration(
            hintText: 'Name'
          ),
        ),
        TextField(
          controller: phn,
          decoration:const InputDecoration(
            hintText: 'Contact Number'
          ),
        ),
        ElevatedButton(onPressed: (){
          if(id == null){
            adddata();
          }
          if(id != null){
            updatedata(id);
          }
        }, child: Text(id==null?"Create Contact":"Update Contact"))

      ],
    ),
   )
   );

  }
  
  Future<void> adddata() async {
    await SQlHelper.adddata(name.text,phn.text);
  }
  
  Future<void> loaddata() async {
    final data = await SQlHelper.readData();
    setState(() {
      contacts = data;
      isloading= false;
    });
  }
  
  Future<void> updatedata(int id) async{
    await SQlHelper.updatedata(id,name.text,phn.text);
  }
  
  Future<void> datadelete(int id) async {
    await SQlHelper.deletedata(id);
  }
}

