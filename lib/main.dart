
import 'package:flutter/material.dart';
import 'package:flutter_bootcamp_2025/screen/HomeAppBar.dart';
import 'package:flutter_bootcamp_2025/screen/HomeDrawer.dart';
import 'package:flutter_bootcamp_2025/screen/HomeFloatingAction.dart';
import 'package:flutter_bootcamp_2025/screen/HomeListViewTile.dart';
import 'package:flutter_bootcamp_2025/screen/HomeRowColumnExpended.dart';
import 'package:flutter_bootcamp_2025/screen/ListViewBuilderHome.dart';
import 'package:flutter_bootcamp_2025/screen/StackWidgetHome.dart';
import 'package:flutter_bootcamp_2025/screen/StateLessFulWidget.dart';
import 'package:flutter_bootcamp_2025/screen/customswidgets.dart';
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
      home: Statelessfulwidget(),
    );
  }
}




