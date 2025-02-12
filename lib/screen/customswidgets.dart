import 'package:flutter/material.dart';

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
          ListTileWidget(),
          ListTileWidget(),
          ListTileWidget()

        ],
      ),
    );
  }
}

class ListTileWidget extends StatelessWidget {
  const ListTileWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: ListTile(
        tileColor: Colors.black12,
        shape: ContinuousRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
            side: BorderSide(width: 1.0, color: Colors.blue)),
        title: Text(
          "Mouse",
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.blue),
        ),
        subtitle: Text("4TechCom"),
        leading: IconButton(
          icon: Icon(Icons.add),
          onPressed: () {},
        ),
        trailing: IconButton(
          icon: Icon(Icons.ice_skating),
          onPressed: () {},
        ),
      ),
    );
  }
}
