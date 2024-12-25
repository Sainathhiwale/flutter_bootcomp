import 'package:flutter/material.dart';

class Homedrawer extends StatelessWidget {
  const Homedrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Navigation Drawer",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blueAccent,
      ),
      drawer: Drawer(
        elevation: 0,
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.all(0),
              child: Container(
                color: Colors.blue,
                child: Column(
                  children: [Text("Hi")],
                ),
              ),
            ),
            ListTile(leading: Icon(Icons.home), title: Text("Home"),onTap: (){},),
            ListTile(leading: Icon(Icons.shop), title: Text("Shop"),onTap: (){},),
            ListTile(leading: Icon(Icons.favorite), title: Text("Favorites"),onTap: (){},),
          ],
        ),
      ),
    );
  }
}
