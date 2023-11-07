import 'package:flutter/material.dart';
import 'package:my_flutterprj/statementmange/providerr/movieprovider.dart';
import 'package:provider/provider.dart';

class MyWishList extends StatelessWidget {
  const MyWishList({super.key});

  @override
  Widget build(BuildContext context) {

    final wishlistt= context.watch<Movieprovider>().wishmovie;
    return Scaffold(
      appBar: AppBar(
        title: Text("WishList ${wishlistt.length}"),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
        
      }),
    );
  }
}