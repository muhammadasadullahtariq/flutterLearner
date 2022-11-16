import 'package:flutter/material.dart';

void main() => runApp(TextFieldWidget(
      hintText: '',
    ));

class TextFieldWidget extends StatefulWidget {
  final String hintText;
  const TextFieldWidget({super.key, required this.hintText});

  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: Builder(builder: (context) {
          return Container(
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
              decoration: InputDecoration(
                hintText: widget.hintText,
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
          );
        }),
      ),
    );
  }
}
