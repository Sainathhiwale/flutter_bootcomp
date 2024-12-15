
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text("Stateful Widget Lifecycle")),
        body: const LifecycleDemo(),
      ),
    );
  }
}

class LifecycleDemo extends StatefulWidget {
  const LifecycleDemo({super.key});

  @override
  _LifecycleDemoState createState() {
    print("createState: Creating the state object");
    return _LifecycleDemoState();
  }
}

class _LifecycleDemoState extends State<LifecycleDemo> {
  int _counter = 0; // Counter variable

  @override
  void initState() {
    super.initState();
    print("initState: State object initialized");
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print("didChangeDependencies: Dependencies changed");
  }

  @override
  Widget build(BuildContext context) {
    print("build: Building the widget");
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Stateful Widget Lifecycle",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Text("Button Pressed: $_counter  times",
          style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              print("Button Pressed: Calling setState");
              setState(() {
                _counter++;
              });
            },
            child: const Text("Press Me"),
          ),
        ],
      ),
    );
  }

  @override
  void didUpdateWidget(covariant LifecycleDemo oldWidget) {
    super.didUpdateWidget(oldWidget);
    print("didUpdateWidget: Widget updated");
  }

  @override
  void deactivate() {
    super.deactivate();
    print("deactivate: Widget removed temporarily");
  }

  @override
  void dispose() {
    super.dispose();
    print("dispose: Cleaning up resources");
  }
}



