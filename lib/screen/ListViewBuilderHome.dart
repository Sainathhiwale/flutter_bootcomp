import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';


class Listviewbuilderhome extends StatelessWidget {
   Listviewbuilderhome({super.key}){
   for (int i = 4; i <= 100; i++) {
   product.add("Chair $i");
   productDetails.add("King Sizw Bad $i");
   prize.add(i * 10);
   }
}

  List<String> product = ["Bad","Safe","Chair"];
  List<String> productDetails = ["King Sizw Bad","King Size Safe","King Size Chair"];
  List<int> prize = [200,400,600];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // appBar: AppBar(title: Text("List View Builder"),),
      body: Container(
        child: ListView.builder(
            itemCount: product.length,
            itemBuilder: (context,index){
             return ListTile(
                leading: CircleAvatar(child: Text(product[index][0]),),
                title: Text(product[index]),
                subtitle: Text(productDetails[index]),
                trailing: Text(prize[index].toString()),
                onTap: (){
                  Fluttertoast.showToast(msg: product[index],
                  toastLength: Toast.LENGTH_SHORT,
                  textColor: Colors.deepPurple,
                    gravity: ToastGravity.CENTER
                  );
                },
              );
            }
        ),
      ),
    );
  }
}
