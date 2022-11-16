import 'package:flutter/material.dart';
import 'package:flutterlearner/utility.dart';

void main() => runApp(const TextFieldDynom(
      hintText: '',
    ));

class TextFieldDynom extends StatefulWidget {
  final String hintText;
  const TextFieldDynom({super.key, required this.hintText});

  @override
  State<TextFieldDynom> createState() => _TextFieldDynomState();
}

class _TextFieldDynomState extends State<TextFieldDynom> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: Container(
          height: 46,
          width: MediaQuery.of(context).size.width * 0.8,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(30),
            ),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey,
                  spreadRadius: 1,
                  blurRadius: 8,
                  offset: Offset(0, 3)),
            ],
          ),
          child: const TextField(
            maxLines: 1,
            decoration: InputDecoration(
              hintText: "Please Enter Text",
              isDense: true,
              contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
              filled: true,
              fillColor: Colors.white,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(30),
                ),
                borderSide: BorderSide(color: Colors.white),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(30),
                ),
                borderSide: BorderSide(color: Colors.white),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
