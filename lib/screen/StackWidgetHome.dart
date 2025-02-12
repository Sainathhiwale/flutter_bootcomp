
import 'package:flutter/material.dart';
class StackWidgetHome extends StatelessWidget {
  const StackWidgetHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
           title: Text("Stack"),
           centerTitle: true,
        backgroundColor: Colors.black26,
      ),
      backgroundColor: Colors.grey,
      body: Center(
        child: Stack(
         alignment: Alignment.center,
          children: [
            Container(
              width: 300,
              height: 200,
              color: Colors.green,
            ),
            Positioned(
              bottom: 0,
              child: Container(
                width: 200,
                height: 100,
                color: Colors.yellow,
              ),
            ),
            Positioned(
              right: 50,
              child: Container(
                width: 100,
                height: 50,
                color: Colors.blue,
              ),
            ),
          ],
        ),
      )
    );
  }
}
