import 'package:flutter/material.dart';

class Mytextfield extends StatelessWidget {
   Mytextfield({
    Key? key,
    required this.fieldName,
    required this.myController,
    this.myIcon = Icons.verified_user_outlined,
    this.prefixiconColor = Colors.blueAccent,
  });
  final TextEditingController myController;
  String fieldName;
  final IconData myIcon;
  final Color prefixiconColor;


  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller:  myController,
      decoration: InputDecoration(
        labelText: fieldName,
        prefixIcon: Icon(myIcon, color: prefixiconColor,),
        border: const OutlineInputBorder(),
        focusedBorder: OutlineInputBorder(
        borderSide:  BorderSide(color: Colors.deepPurple.shade300),
        ),
        labelStyle: const TextStyle(color: Colors.deepPurple)
      ),
    );
  }
}
