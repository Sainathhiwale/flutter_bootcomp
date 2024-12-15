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
           child: Column(
             children: [
               Text("Random number is ${getNumber()}"),
               Text("Name is  ${getNameList(2)}"),
               Text("Random number is ${getNumber()}"),
             ],
           )

      ),
    );
  }
}

int getNumber() {
  return Random().nextInt(100);
}
List<String> getNameList(int count) {
  // Predefined list of strings
  List<String> names = [
    "Alice",
    "Bob",
    "Charlie",
    "David",
    "Eve",
    "Frank",
    "Grace",
    "Hannah",
    "Ivy",
    "Jack"
  ];
  // List to store random strings
  List<String> randomNames = [];
  Random random = Random();

  // Generate 'count' random names
  for (int i = 0; i < count; i++) {
    String randomName = names[random.nextInt(names.length)];
    randomNames.add(randomName);
  }
  return randomNames;
}

