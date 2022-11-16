import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutterlearner/models/options_model.dart';
import 'package:matcher/matcher.dart';

class optionListWidget extends StatelessWidget {
  final optionsModel optionModel;

  const optionListWidget({super.key, required this.optionModel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: ListTile(
        leading:
            Icon(IconData(optionModel.iconName, fontFamily: 'MaterialIcons')),
        title: Text(optionModel.heading),
        trailing: Icon(Icons.skip_next),
      ),
    );
  }
}
