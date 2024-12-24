


import 'package:flutter/material.dart';

class Homerowcolumnexpended extends StatelessWidget {
  const Homerowcolumnexpended({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text("Row and Column" ), centerTitle: true, ),
      body: Container(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.star),
                Icon(Icons.star),
                Icon(Icons.star),
                Icon(Icons.star_border),
                Icon(Icons.star_border),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Icon(Icons.phone,size: 34.0),
                    Text("Phone"),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.share,size: 34.0),
                    Text("Share"),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.cabin_sharp,size: 34.0),
                    Text("Home"),
                  ],
                )


              ],
            ),
          ],
        ),
      ),
    );
  }
}
