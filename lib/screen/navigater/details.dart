import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  const Details({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Details Page"),
        backgroundColor: Colors.green,
        centerTitle: true,
        /*leading: IconButton(onPressed: () {
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back),
        ),*/  // added back arrow if default is not showing
      ),

      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          child: ListView(
            children: [
              ListTile(
                title: Text("Laptop"),
                subtitle: Text("4MTech Lenovo"),
                trailing: Icon(Icons.account_balance),
                onTap: (){
                },
              ),
              ListTile(
                title: Text("Skating"),
                subtitle: Text("4MTech Shoes"),
                trailing: Icon(Icons.ice_skating),
                onTap: (){
                },
              ),
              ListTile(
                title: Text("Mouse"),
                subtitle: Text("4MTech Mouse"),
                trailing: Icon(Icons.ac_unit_rounded),
                onTap: (){
                },
              ),
              ListTile(
                title: Text("Laptop"),
                subtitle: Text("4MTech Lenovo"),
                trailing: Icon(Icons.computer_outlined),
                onTap: (){
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
