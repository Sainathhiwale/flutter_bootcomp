import 'package:flutter/material.dart';
import 'package:flutter_bootcamp_2025/screen/custome_widgets/ListTileWidget.dart';

class Customswidgets extends StatelessWidget {
  const Customswidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Customs Widget"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: ListView(
        children: [
          ListTileWidget(
            title: "Mouse",
            subTitle: "M4Tech Mouse",
          ),
          ListTileWidget(
            title: "Laptop",
            subTitle: "Lenovo Laptop",
            leadingIcon: Icons.laptop,
            listTileColor: Colors.yellow,
            trailingIcon: Icons.shopping_cart,
            iconColor: Colors.pink,
          ),
        ],
      ),
    );
  }
}
