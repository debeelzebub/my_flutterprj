import 'package:flutter/material.dart';
import 'package:my_flutterprj/statementmange/providerr/movieprovider.dart';
import 'package:provider/provider.dart';
void main(){
  runApp(
   ChangeNotifierProvider<Movieprovider>(create: (context) => Movieprovider(),
   child: MaterialApp(home: MyHomee(),),
   ),
   
  );
}
class MyHomee extends StatelessWidget {
  const MyHomee({super.key});

   @override
  Widget build(BuildContext context) {

     var movie_to_wishlist =context.watch<Movieprovider>().wishmovie;
     var movies =context.watch<Movieprovider>().movie;

    return Scaffold(
      appBar: AppBar(
        title: Text("Movies"),
      ),
      body: Column(
        children: [

          ElevatedButton.icon(onPressed:(){}, 
          icon:const Icon(Icons.favorite,color:Colors.red,), label:const Text("WishList")),
          Expanded(child: 
          ListView.builder(
            itemCount: movies.length,
            itemBuilder: (context, index){ 
              final currentval=movies[index];
          return Card(
            child: ListTile(
              title: Text(currentval.name),
              trailing: IconButton(
                onPressed: (){
                  
                  if(!movie_to_wishlist.contains(currentval)){
                    context.read<Movieprovider>().addtolist(currentval);
                  }else{
                    context.read<Movieprovider>().removefromlist(currentval);
                  }

                },
                
                 icon:Icon(Icons.favorite,
              color:movie_to_wishlist.contains(currentval)
              ?Colors.red
              :Colors.white,) ),
            ));}))
        ],
      ),
    );
  }
}