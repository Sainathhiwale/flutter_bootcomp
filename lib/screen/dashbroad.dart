import 'package:flutter/material.dart';

class Dashbroad extends StatelessWidget {
  const Dashbroad({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dashbroad".toLowerCase()),
        backgroundColor: Colors.blueGrey,
      ),
      body: const Center(
        child: Text.rich(
          TextSpan(text: "My", children: [
            TextSpan(
                text: "Flutter",
                style: TextStyle(fontSize: 50.0, fontWeight: FontWeight.bold)),
            TextSpan(
                text: "App",
                style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold))
          ]),
        ),
      ),
    );
  }
}
