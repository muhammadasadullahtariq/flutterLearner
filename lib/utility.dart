import 'package:flutter/material.dart';

void main() {
  runApp(const Other());
}

class Other extends StatelessWidget {
  const Other({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.pink),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Utility"),
        ),
      ),
    );
  }
}
