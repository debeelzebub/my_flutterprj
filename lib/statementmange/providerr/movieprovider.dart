import 'dart:math';

import 'package:flutter/material.dart';

import '../model/movie.dart';

final List<Movie>movielist=List.generate(100, (index) => Movie(name: 'Movie $index',
time: "${Random().nextInt(100)+60} minutes"));

class Movieprovider extends ChangeNotifier{
  final List<Movie> _movies =movielist;
  List<Movie> get movie => _movies;

  final List<Movie> _wishlist =[];
  List<Movie> get wishmovie=> _wishlist;

  void addtolist(Movie moviefromlist){
    _wishlist.add(moviefromlist);
    notifyListeners();
  }
   void removefromlist(Movie moviefromlist){
    _wishlist.remove(moviefromlist);
    notifyListeners();
  }

}