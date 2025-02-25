import 'package:flutter/material.dart';
import 'package:flutter_bootcamp_2025/screen/custome_widgets/mytextfield.dart';
import 'package:flutter_bootcamp_2025/screen/dropdown_spineer/details_dropdown.dart';

class FormDropdown extends StatefulWidget {
   const FormDropdown({super.key});

  @override
  State<FormDropdown> createState() => _FormDropdownState();
}

class _FormDropdownState extends State<FormDropdown> {
  _FormDropdownState(){
  _selectedVal = _productsizeList[0];
  }
  final _productConstroller = TextEditingController();
  final _productDetailsConstroller = TextEditingController();
  bool? _checkbox = false;
  bool? _checkboxlistTile = false;

  final _productsizeList = ["Small","Medium","Large","Xlarge"];
  String? _selectedVal ="";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dropdown example"),
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(12.0),
        child: ListView(
          children: [
            Text("Add Product" ),
            Text("Add product details in form below"),
            SizedBox(
              height: 20.0,
            ),
            Mytextfield(
              myController: _productConstroller,
              fieldName: "Product Name",
              myIcon: Icons.propane_outlined,
              prefixiconColor: Colors.deepPurple.shade300,
            ),
            SizedBox(
              height: 10.0,
            ),
            Mytextfield(
              myController: _productDetailsConstroller,
              fieldName: "Product Details",
              myIcon: Icons.description_outlined,
              prefixiconColor: Colors.deepPurple.shade300,
            ),
            SizedBox(
              height: 10.0,
            ),
            Checkbox(
                checkColor: Colors.white,
                activeColor: Colors.purple,
                tristate:true ,
                value: _checkbox,
                onChanged: (val) {
                  setState(() {
                    _checkbox = val;
                  });
                }),
            SizedBox(
              height: 10.0,
            ),
            CheckboxListTile(
                value: _checkboxlistTile,
                title: Text("Top Product"),
                onChanged: (val){
                  setState(() {
                    _checkboxlistTile = val;
                  });
                }),
            SizedBox(
              height: 20.0,
            ),
            DropdownButtonFormField(
                value: _selectedVal,
                items: _productsizeList.map(
                (e) => DropdownMenuItem(child: Text(e), value: e,)
            ).toList(),
                onChanged: (val){
                  setState(() {
                    _selectedVal = val as String;
                  });
            },
              icon: const Icon(
                Icons.arrow_drop_down_circle,
                color: Colors.deepPurple,
              ),
              dropdownColor:Colors.deepPurple.shade50 ,
              decoration: InputDecoration(
                labelText: "Product Size",
                prefixIcon: Icon(
                    Icons.accessibility_sharp,
                  color: Colors.deepPurple,
                ),
                border: UnderlineInputBorder(),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            myBtn(context),
          ],
        ),
      ),
    );
  }

  OutlinedButton myBtn(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
          minimumSize: const Size(200, 50),
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return DetailsDropdown(producName: _productConstroller.text, productDetails: _productDetailsConstroller.text, );
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