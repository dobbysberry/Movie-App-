import 'package:flutter/material.dart';
import 'package:movie_bookin_app/pages/home_page.dart';

import 'pages/movie_detail_page.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {


  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
