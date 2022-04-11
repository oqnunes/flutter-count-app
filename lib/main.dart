import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var count = 0;

  void increment() {
    count++;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
        AppBar(
          title: const Text("Count App"), 
          backgroundColor: Colors.orange
        ),
      body: Center(
        child: Column(
          children: [
             const Text(
              "Count", 
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 32, height: 4),
              
            ),
             Text(
              "$count", 
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 32, height: 4),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: increment,
        backgroundColor: Colors.orange,
      ),
    );
  }
}
