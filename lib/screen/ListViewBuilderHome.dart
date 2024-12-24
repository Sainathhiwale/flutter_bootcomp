import 'package:flutter/material.dart';


class Listviewbuilderhome extends StatelessWidget {
  const Listviewbuilderhome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("List View Builder"),),
      body: Container(
        child: ListView.builder(
            itemBuilder: (context,index){
              return Text(index.toString());
            }
        ),
      ),
    );
  }
}
