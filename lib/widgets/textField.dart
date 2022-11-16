import 'package:flutter/material.dart';
import 'package:flutterlearner/utility.dart';

class TextFieldDynom extends StatefulWidget {
  final String hintText;
  final Widget prefixIconConstraints;
  final Function validatorFunction;
  final String parametersValidate;
  const TextFieldDynom(
      {super.key,
      required this.hintText,
      required this.prefixIconConstraints,
      required this.validatorFunction,
      required this.parametersValidate});

  @override
  State<TextFieldDynom> createState() => _TextFieldDynomState();
}

class _TextFieldDynomState extends State<TextFieldDynom> {
  String value = "";
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: Container(
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
          child: TextFormField(
            validator: ((value) =>
                commonValidation(value!, widget.parametersValidate)),
            onChanged: (value) {
              value = value;
              setState(() {});
            },
            maxLines: 1,
            decoration: InputDecoration(
              errorMaxLines: 1,
              prefixIcon: widget.prefixIconConstraints,
              hintText: widget.hintText,
              isDense: true,
              contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
              filled: true,
              fillColor: Colors.white,
              focusedErrorBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(30),
                ),
                borderSide: BorderSide(color: Colors.red),
              ),
              errorBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(30),
                ),
                borderSide: BorderSide(color: Colors.red),
              ),
              enabledBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(30),
                ),
                borderSide: BorderSide(color: Colors.white),
              ),
              focusedBorder: const OutlineInputBorder(
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

String? commonValidation(String value, String messageError) {
  var required = requiredValidator(value, messageError);
  if (required != null) {
    return required;
  }
  return null;
}

String? requiredValidator(value, messageError) {
  if (value!.isEmpty) {
    print("value is " + value);
    return messageError;
  }
  return null;
}
