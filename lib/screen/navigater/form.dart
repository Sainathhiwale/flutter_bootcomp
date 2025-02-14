import 'package:flutter/material.dart';
import 'package:flutter_bootcamp_2025/screen/navigater/details.dart';

class MyForm extends StatefulWidget {
  const MyForm({super.key});

  @override
  State<MyForm> createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  final _productConstroller = TextEditingController();
  final _productDetailsConstroller = TextEditingController();
  var _productName, productDetails;

  @override
  void initState() {
    super.initState();
    _productConstroller.addListener(updateText);
    _productDetailsConstroller.addListener(updateProduct);
  }
  @override
  void dispose() {
    // TODO: implement dispose
    _productConstroller.dispose();
    _productDetailsConstroller.dispose();
    super.dispose();
  }
  void updateText() {
    setState(() {
      _productName = _productConstroller.text;
    });
  }
  void updateProduct(){
    setState(() {
      productDetails = _productDetailsConstroller.text;
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
              controller: _productDetailsConstroller,
              decoration: InputDecoration(
                labelText: "Product Details",
                prefixIcon: Icon(Icons.verified_user),
                border: OutlineInputBorder(),
              ),
            ),
            Text("Product Details ${_productDetailsConstroller.text}"),
            SizedBox(height: 20.0,),
            outlinedButton(context),

          ],
        ),
      ),
    );
  }
  OutlinedButton outlinedButton(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(minimumSize: const Size(200, 50),
      backgroundColor: Colors.blue,
      foregroundColor: Colors.white),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return Details(producName: _productConstroller.text, productDetails: _productDetailsConstroller.text,);
            },
          ),
        );
      },
      child: Text(
        "Submit Form".toUpperCase(),
        style: const TextStyle(fontWeight: FontWeight.bold),

      ),
    );
  }

}




