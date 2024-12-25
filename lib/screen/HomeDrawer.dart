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
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountEmail: Text("sainathhiwale@gmail.com"),
              accountName: Text("Examen with Sainath"),
              currentAccountPicture: CircleAvatar(foregroundImage: AssetImage("images/profile.jpg"),),
              otherAccountsPictures: [
                CircleAvatar(foregroundImage: AssetImage("images/profile.jpg"),),
                CircleAvatar(foregroundImage: AssetImage("images/profile.jpg"),),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: Text("All Indexes"),
            ),
            ListTile(leading: Icon(Icons.laptop), title: Text("Primary"),onTap: (){},),
            ListTile(leading: Icon(Icons.label), title: Text("Promoations"),onTap: (){},),
            ListTile(leading: Icon(Icons.home), title: Text("Home"),onTap: (){},),
            ListTile(leading: Icon(Icons.shop), title: Text("Shop"),onTap: (){},),
            ListTile(leading: Icon(Icons.favorite), title: Text("Favorites"),onTap: (){},),
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: Text("All Lable"),
            ),
            ListTile(leading: Icon(Icons.email), title: Text("Gmail"),onTap: (){},),
            ListTile(leading: Icon(Icons.star_border), title: Text("Starred"),onTap: (){},),
            ListTile(leading: Icon(Icons.watch_later_sharp), title: Text("Snoozed"),onTap: (){},),
            ListTile(leading: Icon(Icons.label), title: Text("Important"),onTap: (){},),
            ListTile(leading: Icon(Icons.send), title: Text("Send"),onTap: (){},),
            ListTile(leading: Icon(Icons.schedule_send), title: Text("Scheduled"),onTap: (){},),
            ListTile(leading: Icon(Icons.outbond_outlined), title: Text("Outbox"),onTap: (){},),
            ListTile(leading: Icon(Icons.drafts), title: Text("Drafts"),onTap: (){},),
            ListTile(leading: Icon(Icons.all_inbox), title: Text(" All Mail"),onTap: (){},),
            ListTile(leading: Icon(Icons.question_mark_sharp), title: Text(" Spam"),onTap: (){},),
            ListTile(leading: Icon(Icons.delete), title: Text("Bin"),onTap: (){},),

            Padding(
              padding: const EdgeInsets.all(14.0),
              child: Text("Google apps"),
            ),
            ListTile(leading: Icon(Icons.delete), title: Text("Bin"),onTap: (){},),
            ListTile(leading: Icon(Icons.settings), title: Text("Settings"),onTap: (){},),
            ListTile(leading: Icon(Icons.help), title: Text("Help"),onTap: (){},),

          ],
        ),
      ),
    );
  }
}
