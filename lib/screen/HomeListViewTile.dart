
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Homelistviewtile extends StatelessWidget {
  const Homelistviewtile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          itemExtent: 100.0,
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          children: [
            ListTile(
              leading: CircleAvatar(child: Icon(Icons.person_2_rounded),backgroundColor: Colors.deepPurple.shade300),
              title: Text("Sale"),
              subtitle: Text("sale is open"),
              trailing: Icon(Icons.add),
              tileColor: Colors.brown.shade50,
              onTap: (){},
            ),
            ListTile(
              leading: Icon(Icons.cabin_sharp),
              title: Text("Customer"),
              subtitle: Text("Total Customer Visited"),
              trailing: Text("500"),
              tileColor: Colors.deepPurple.shade50,
              onTap: (){},
            ),
            ListTile(
              leading: Icon(Icons.production_quantity_limits_sharp),
              title: Text("Profit"),
              subtitle: Text("Profit of week"),
              trailing: Icon(Icons.alarm_add_sharp),
              tileColor: Colors.brown.shade50,
              onTap: (){
                Fluttertoast.showToast(msg: "Profit is 50%",
                toastLength: Toast.LENGTH_SHORT,
                  fontSize: 20.0,
                  backgroundColor: Colors.blue,
                  gravity:ToastGravity.CENTER
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
