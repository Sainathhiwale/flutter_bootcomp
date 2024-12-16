import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Dashbroad extends StatelessWidget {
  const Dashbroad({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dashbroad".toLowerCase()),
        backgroundColor: Colors.blueGrey,
      ),
      body:  Center(
           child: GridView.count(
             crossAxisCount: 2, // Number of columns
             crossAxisSpacing: 10.0, // Spacing between columns
             mainAxisSpacing: 10.0, // Spacing between rows
             children: [
               Image.asset("images/apple.png"),
               Image.asset("images/casino.png"),
               Image.asset("images/lottery.png"),
               Image.asset("images/roulette.png"),
               Image.network("https://upload.wikimedia.org/wikipedia/commons/thumb/4/4a/Tesla_Model_S_Japan_trimmed.jpg/435px-Tesla_Model_S_Japan_trimmed.jpg"),
               Image.network("https://media.autoexpress.co.uk/image/private/s--3XzRB3yS--/v1565798347/autoexpress/2019/08/04_7.jpg"),
               Image.network("https://upload.wikimedia.org/wikipedia/commons/thumb/4/4a/Tesla_Model_S_Japan_trimmed.jpg/435px-Tesla_Model_S_Japan_trimmed.jpg"),
               Image.network("https://media.autoexpress.co.uk/image/private/s--3XzRB3yS--/v1565798347/autoexpress/2019/08/04_7.jpg"),

             ],
           ),
      ),
    );
  }
}


