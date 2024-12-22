
import 'package:flutter/material.dart';
import 'package:flutter_bootcamp_2025/screen/HomeAppBar.dart';
import 'package:flutter_bootcamp_2025/screen/dashbroad.dart';
import 'package:flutter_bootcamp_2025/screen/home.dart';



void main(){
  runApp( MyApp());
}
// create develop branch
class MyApp extends StatelessWidget{
   MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My Flutter App",
      debugShowCheckedModeBanner: false,
      home: Homeappbar(),
    );
  }
}




