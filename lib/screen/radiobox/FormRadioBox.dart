import 'package:flutter/material.dart';
import 'package:flutter_bootcamp_2025/screen/checkbox/DetailsCheckbox.dart';
import 'package:flutter_bootcamp_2025/screen/custome_widgets/mytextfield.dart';

enum ProductTypeEnum { Downloadable, Deliverable }

class Formradiobox extends StatefulWidget {
  Formradiobox({super.key});

  @override
  State<Formradiobox> createState() => _FormcheckboxState();
}

class _FormcheckboxState extends State<Formradiobox> {
  final _productConstroller = TextEditingController();
  final _productDetailsConstroller = TextEditingController();
  bool? _checkbox = false;
  bool? _checkboxlistTile = false;
  ProductTypeEnum? _productTypeEnum;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Check Box example"),
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(12.0),
        child: ListView(
          children: [
            Text("Add Product"),
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
            CheckboxListTile(
                checkColor: Colors.white,
                activeColor: Colors.purple,
                value: _checkboxlistTile,
                title: Text("Top Product"),
                onChanged: (val) {
                  setState(() {
                    _checkboxlistTile = val;
                  });
                }),

            Row(
              children: [
                Expanded(
                  child: RadioListTile<ProductTypeEnum>(
                     contentPadding: EdgeInsets.all(0.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0)
                      ),
                      dense: true,
                      value: ProductTypeEnum.Deliverable,
                      groupValue: _productTypeEnum,
                      tileColor: Colors.purple.shade50,
                      title: Text(ProductTypeEnum.Deliverable.name),
                      onChanged: (val){
                       setState(() {
                         _productTypeEnum = val;
                       });
                      }),
                ),
                SizedBox(width: 10.0,),
                Expanded(
                  child: RadioListTile<ProductTypeEnum>(
                      contentPadding: EdgeInsets.all(0.0),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0)
                      ),
                      dense: true,
                      value: ProductTypeEnum.Downloadable,
                      groupValue: _productTypeEnum,
                      tileColor: Colors.pink.shade50,
                      title: Text(ProductTypeEnum.Downloadable.name),
                      onChanged: (val){
                        setState(() {
                         _productTypeEnum =val;
                        });
                      }),
                ),
              ],
            ),
            SizedBox(
              height: 10.0,
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
              return Detailscheckbox(
                producName: _productConstroller.text,
                productDetails: _productDetailsConstroller.text,
              );
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
