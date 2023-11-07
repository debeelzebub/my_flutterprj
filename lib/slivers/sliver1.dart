import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: Sliver1(),
  ));
}

class Sliver1 extends StatelessWidget {
  const Sliver1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating:true,
            pinned:false,
            title: const Text("AppBar"),
            bottom: AppBar(
              elevation: 0,
              title: Container(
                width: double.infinity,
                height: 40,
                color:Colors.purple,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'search',
                    prefixIcon: Icon(Icons.search)
                  ),
                ),
              ),
            ),
          ),
          SliverList(delegate: SliverChildBuilderDelegate((context, index) => Card(
            child: Text("User $index"),
          )))
        ],
      ),
    );
  }
}
