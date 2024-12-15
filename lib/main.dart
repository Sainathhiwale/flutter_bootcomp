
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text("Dashbroad".toLowerCase()),
        backgroundColor: Colors.blueGrey,
        ),
        body: const Center(
          child: Text.rich(
            TextSpan(
              text: "My",
                  children:[
                    TextSpan(
                    text: "Flutter",
                      style: TextStyle(fontSize: 50.0, fontWeight: FontWeight.bold)),
                    TextSpan(
                      text: "App",
                      style: TextStyle(fontSize: 30.0,fontWeight: FontWeight.bold)
                    )
                  ]
            ),
          ),
        ),
      ),
    );
  }
}




