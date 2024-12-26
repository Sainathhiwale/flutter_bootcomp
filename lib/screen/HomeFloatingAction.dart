import 'package:flutter/material.dart';

class Homefloatingaction extends StatelessWidget {
  const Homefloatingaction({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
         appBar: AppBar(title: Text("Floating Action Button"),
           backgroundColor: Colors.blue,
           titleTextStyle: TextStyle(color: Colors.white, fontSize: 20),
         ),
         floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
         floatingActionButton: FloatingActionButton(
           onPressed: (){
           },
           child: Icon(Icons.add),
           backgroundColor: Colors.black87,
           foregroundColor: Colors.yellow,
           shape: CircleBorder(),
           /*mini: true,
           shape: BeveledRectangleBorder(
             borderRadius: BorderRadius.circular(20.0),
             side: BorderSide(color: Colors.blue,width: 2.0,style: BorderStyle.solid)
           ),*/
           ),

         bottomNavigationBar: BottomAppBar(
           notchMargin: 8.0,
           shape: CircularNotchedRectangle(),
           color: Colors.black87,
           child: Row(
             mainAxisAlignment: MainAxisAlignment.spaceAround,
             mainAxisSize: MainAxisSize.max,
             children: [
               Padding(padding: EdgeInsets.only(left: 10.0),
                 child: Column(
                   mainAxisSize: MainAxisSize.min,
                   children: [
                     Icon(Icons.home,color: Colors.white),
                     Text("Home",style: TextStyle(color: Colors.white),)
                   ],
                 ),
               ),
               Padding(padding: EdgeInsets.only(left: 10.0),
                 child: Column(
                   mainAxisSize: MainAxisSize.min,
                   children: [
                     Icon(Icons.favorite,color: Colors.white),
                     Text("fav",style: TextStyle(color: Colors.white),)
                   ],
                 ),
               ),
               Padding(padding: EdgeInsets.only(left: 10.0),
                 child: Column(
                   mainAxisSize: MainAxisSize.min,
                   children: [
                     Icon(Icons.shop,color: Colors.white),
                     Text("Home",style: TextStyle(color: Colors.white),)
                   ],
                 ),
               ),
               Padding(padding: EdgeInsets.only(left: 10.0),
                 child: Column(
                   mainAxisSize: MainAxisSize.min,
                   children: [
                     Icon(Icons.share,color: Colors.white),
                     Text("Shared",style: TextStyle(color: Colors.white),)
                   ],
                 ),
               )
             ],
           ),
         ),
      );

  }
}
