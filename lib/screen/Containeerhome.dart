
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Containeerhome extends StatelessWidget {
  const Containeerhome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Dashbroad".toLowerCase()),
          backgroundColor: Colors.blue,
        ),
        body: Column(
          children: [
            Container(
              width: 350.0,
              height: 250.0,
              margin: EdgeInsets.all(20.0),
              padding: EdgeInsets.all(50.0),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                //borderRadius: BorderRadius.circular(10.0),
                color: Colors.blueGrey,
                border: Border.all(color: Colors.grey,width: 6.0),
                shape: BoxShape.circle,
                image: DecorationImage(image: AssetImage("images/profile.jpg")),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.shade50,
                      blurRadius: 7,
                      spreadRadius: 5,
                      offset: Offset(4,4)
                  )
                ],
              ),

            ),
            Container(
              width: 350.0,
              height: 230.0,
              margin: EdgeInsets.all(20.0),
              padding: EdgeInsets.all(20.0),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.blueGrey,
                border: Border.all(color: Colors.grey,width: 6.0),
                shape: BoxShape.rectangle,
                image: DecorationImage(image: AssetImage("images/roulette.png")),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.shade50,
                      blurRadius: 7,
                      spreadRadius: 5,
                      offset: Offset(4,4)
                  )
                ],
              ),
            ),
          ],
        )
    );
  }
}
