import 'package:flutter/material.dart';
import 'package:flutter_bootcamp_2025/screen/navigater/details.dart';

class MyForm extends StatefulWidget {
  const MyForm({super.key});

  @override
  State<MyForm> createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  final _productConstroller = TextEditingController();
  var _productName;

  @override
  void initState() {
    super.initState();
    _productConstroller.addListener(updateText);
  }
  void updateText() {
    setState(() {
      _productName = _productConstroller.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Form Product"),
        centerTitle: true,
        backgroundColor: Colors.orange,
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: ListView(
          children: [
            TextFormField(
              controller: _productConstroller,
              decoration: InputDecoration(
                  labelText: "Product Name",
                  prefixIcon: Icon(Icons.verified_user_outlined),
                  border: OutlineInputBorder()),
            ),
            Text("Product Name ${_productConstroller.text}"),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: "Product Details",
                prefixIcon: Icon(Icons.verified_user),
                border: OutlineInputBorder(),
              ),
            ),
          ],
        ),
      ),
    );
  }



}
/*
* child: Center(
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
        ),*/
