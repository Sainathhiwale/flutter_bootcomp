import 'package:flutter/material.dart';
import 'package:flutter_bootcamp_2025/screen/navigater/details.dart';

class MyForm extends StatefulWidget {
  const MyForm({super.key});

  @override
  State<MyForm> createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Form"),
        centerTitle: true,
        backgroundColor: Colors.orange,
        /*leading: IconButton(onPressed: () {
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back),
        ),*/  // added back arrow if default is not showing
      ),
      body: Center(
        child: OutlinedButton(
          style: OutlinedButton.styleFrom(minimumSize: const Size(200, 50)),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return Details();
                },
              ),
            );
          },
          child: Text(
            "Submit Form".toUpperCase(),
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
