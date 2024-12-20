import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';


class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: ElevatedButton(
            child: Text("Let's Connect"),
            onPressed: (){
             Fluttertoast.showToast(
               msg: "Button clicked!",
               toastLength: Toast.LENGTH_SHORT,
               gravity: ToastGravity.BOTTOM,
               backgroundColor: Colors.blue,
               textColor: Colors.white,
               fontSize: 16.0,
             );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue, // Replaces `primary`
              foregroundColor: Colors.white, // Replaces `onPrimary`
              elevation: 5, // Adds elevation
              shadowColor: Colors.grey, // Adds shadow color
              side: BorderSide(color: Colors.white, width: 2), // Adds border
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0), // Adds rounded corners
              ),
              padding: EdgeInsets.all(20.0),
              fixedSize: Size(300, 80),
              textStyle: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, ),
            ),

          ),
        ),
      );
  }
}
