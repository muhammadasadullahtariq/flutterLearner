import 'package:flutter/material.dart';
import 'package:flutterlearner/models/options_model.dart';
import 'package:flutterlearner/widgets/optionListWidget.dart';

void main() {
  runApp(const Other());
}

class Other extends StatelessWidget {
  const Other({super.key});

  @override
  Widget build(BuildContext context) {
    final dumyList = List.generate(20,
        ((index) => optionsModel(iconName: 0xf04b7, heading: "Card Service")));

    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.blueAccent),
        title: Text("Utility"),
        backgroundColor: Colors.white,
        titleTextStyle: TextStyle(color: Colors.blueAccent),
      ),
      body: ListView.builder(
          itemCount: dumyList.length,
          itemBuilder: ((context, index) =>
              optionListWidget(optionModel: dumyList[index]))),
    );
  }
}
