import 'package:flutter/material.dart';

class Details extends StatelessWidget {
   Details({Key? key, required this.producName, required this.productDetails}):super(key:key);
   String producName;
   String productDetails;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(producName),
        backgroundColor: Colors.green,
        centerTitle: true,

      ),

      body: Container(
        padding: const EdgeInsets.all(20.0),
          child: ListView(
            children: [
              ListTile(
                title: Text(producName),
                subtitle: Text(productDetails),
                leading: Icon(Icons.account_balance),
                onTap: (){
                },
              ),
             /* ListTile(
                title: Text("Skating"),
                subtitle: Text("4MTech Shoes"),
                trailing: Icon(Icons.ice_skating),
                onTap: (){
                },
              ),*/

            ],
          ),
        ),
    );
  }
}
