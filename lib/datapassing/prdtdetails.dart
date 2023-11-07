import 'package:flutter/material.dart';
import 'package:my_flutterprj/datapassing/dummydata.dart';

class MyPrdtdetails extends StatelessWidget {
  const MyPrdtdetails({super.key});

  @override
  Widget build(BuildContext context) {
    final id=ModalRoute.of(context)?.settings.arguments;
    final prodt= prdt.firstWhere((element) => element['Id']==id);

    return Scaffold(
      appBar: AppBar(
        title: Text("Product"),
      ),
      body: Card(
        child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(prodt["img"]),
              Text(prodt["Name"]),
              Text(prodt["desc"]),
              Text('${prodt["Price"]}'),
              Text("${prodt["rating"]}"),

            ],
          ),
        ),
      ),
    );
  }
}