
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp( MyApp());
}
// create develop branch
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title:Center(child: Text("Examen"),) ),
        body:  Center(child: Text("My First App",style:
        TextStyle(fontSize: 24,color: Colors.amberAccent
        ),
        ),

        ),


      ),
    );
  }

}


