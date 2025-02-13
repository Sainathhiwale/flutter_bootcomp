import 'package:flutter/material.dart';

class Statelessfulwidget extends StatelessWidget {
  const Statelessfulwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("StateFul Widget Flutter "),
          centerTitle: true,
        ),
        body: CTStatefulClass(),
      ),
    );
  }
}
class CTStatefulClass extends StatefulWidget {
  const CTStatefulClass({super.key});

  @override
  State<CTStatefulClass> createState() => _CTStatefulClassState();

}

class _CTStatefulClassState extends State<CTStatefulClass> {
   bool liked = false;
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          title: Text("Nike shoes"),
          trailing: IconButton(
            icon: liked? Icon(Icons.heart_broken ): Icon(Icons.add),
            onPressed: (){
                setState(() => liked = !liked);
            },
          ),
        )
      ],
    );
  }
}




