import 'package:flutter/material.dart';

class Homefloatingaction extends StatelessWidget {
  const Homefloatingaction({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
         floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
         floatingActionButton: FloatingActionButton(
           onPressed: (){
           },
           child: Icon(Icons.add),
           backgroundColor: Colors.black87,
           foregroundColor: Colors.yellow,
           /*mini: true,
           shape: BeveledRectangleBorder(
             borderRadius: BorderRadius.circular(20.0),
             side: BorderSide(color: Colors.blue,width: 2.0,style: BorderStyle.solid)
           ),*/
           ),
         bottomNavigationBar: BottomAppBar(
           notchMargin: 5.0,
           shape: CircularNotchedRectangle(),
           color: Colors.black87,
           child: Row(
             mainAxisAlignment: MainAxisAlignment.spaceAround,
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
