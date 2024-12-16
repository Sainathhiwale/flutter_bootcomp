
import 'package:flutter/material.dart';
import 'package:flutter_bootcamp_2025/screen/dashbroad.dart';
// => fat arrow
void main() => runApp(const MyApp());


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My Flutter App",
      debugShowCheckedModeBanner: false,
      home: Dashbroad(),
    );
  }
}




