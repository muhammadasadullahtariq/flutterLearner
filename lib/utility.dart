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
        ((index) => optionsModel(iconName: 0xf05b1, heading: "Card Service")));

    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.pink),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Utility"),
        ),
        body: ListView.builder(
            itemCount: dumyList.length,
            itemBuilder: ((context, index) =>
                optionListWidget(optionModel: dumyList[index]))),
      ),
    );
  }
}
