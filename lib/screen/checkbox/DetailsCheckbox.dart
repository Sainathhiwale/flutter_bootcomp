import 'package:flutter/material.dart';

class Detailscheckbox extends StatefulWidget {
   Detailscheckbox({Key? key, required this.producName, required this.productDetails}):super(key:key);
  String producName;
  String productDetails;

  @override
  State<Detailscheckbox> createState() => _DetailscheckboxState();
}

class _DetailscheckboxState extends State<Detailscheckbox> {
  bool? isChecked = false;
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: Text(widget.producName),
         backgroundColor: Colors.green,
         centerTitle: true,
       ),
       body: Container(
         padding: const EdgeInsets.all(20.0),
         child: ListView(
           children: [
             Card(
               elevation: 4, // Controls shadow depth
               shape: RoundedRectangleBorder(
                 borderRadius: BorderRadius.circular(12), // Rounded corners
               ),
               child: ListTile(
                 title: Text(widget.producName),
                 subtitle: Text(widget.productDetails),
                 leading: const Icon(Icons.account_balance),
                 trailing: Checkbox(
                   value: isChecked,
                   onChanged: (bool? value) {
                     setState(() {
                       isChecked = value!;
                     });
                   },
                 ),
                 onTap: () {
                   // Handle tap
                 },
               ),
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