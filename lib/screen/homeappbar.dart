import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Homeappbar extends StatelessWidget {
  const Homeappbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.menu),onPressed: (){},),
        title: Text("Home",
        style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blueAccent,
        actions: [
          IconButton(icon:Icon(Icons.shopping_cart,color: Colors.white,),onPressed: (){
            Fluttertoast.showToast(msg: "Added in Cart",
              toastLength: Toast.LENGTH_SHORT,
                backgroundColor: Colors.deepPurple,
              textColor: Colors.white
            );
          }, ),
          IconButton(icon: Icon(Icons.search,color: Colors.white,), onPressed: (){
            Fluttertoast.showToast(msg: "Searching Please wait..",
              toastLength: Toast.LENGTH_SHORT,
              backgroundColor: Colors.deepPurple,
              textColor: Colors.white
            );
          }, ),
         // IconButton(icon: Icon(Icons.menu_book), onPressed: (){}, ),
        ],
        elevation: 0,
        centerTitle: true,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(20))
        ),
      ),
      body: Center(
        child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("AppBar Tutorial", style: TextStyle(fontSize: 22),),
            Text("Coding with Examen", style: TextStyle(fontSize: 22),),
          ],
        ),
      ),
    );
  }
}
