
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp( MyApp());
}
// create different branch to maintain master code and free master for merging and ci-cd
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


