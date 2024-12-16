import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Dashbroad extends StatelessWidget {
  const Dashbroad({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dashbroad".toLowerCase()),
        backgroundColor: Colors.blueGrey,
      ),
      body: Center(
        child: IconButton(
          icon: Icon(FontAwesomeIcons.arrowLeft),
          onPressed: () {},
          color: Colors.cyanAccent,
          iconSize: 100,
          splashColor: Colors.white,
          highlightColor: Colors.greenAccent,
        ),
      ),
    );
  }
}
