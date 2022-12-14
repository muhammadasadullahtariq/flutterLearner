// ignore_for_file: prefer_const_constructors, avoid_print

import 'package:flutter/material.dart';
import 'package:flutterlearner/utility.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutterlearner/widgets/textField.dart';
import 'dart:developer';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _formKey = GlobalKey<FormState>();

  moveToNextScreen(BuildContext context) {
    if (_formKey.currentState!.validate()) {
      log("here am i");
      Navigator.push(
         context, MaterialPageRoute(builder: ((context) => const Other())));
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.pink),
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 40,
              ),
              Builder(
                builder: (context) {
                  return IconButton(
                      icon: const Icon(Icons.menu, color: Colors.red),
                      onPressed: () => Scaffold.of(context)
                          .openDrawer() // set your color here
                      );
                },
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                child: Text("SignIn",
                    style: GoogleFonts.roboto(
                      textStyle: TextStyle(
                          color: Colors.grey[300],
                          fontSize: 46,
                          fontWeight: FontWeight.w800),
                    )),
              ),
              const SizedBox(
                height: 60,
              ),
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    TextFieldDynom(
                      hintText: "Enter Email",
                      prefixIconConstraints: Icon(Icons.person),
                      parametersValidate: "Enter email",
                      validatorFunction: commonValidation,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    TextFieldDynom(
                      hintText: "Enter password",
                      prefixIconConstraints: Icon(Icons.password),
                      parametersValidate: "Enter password",
                      validatorFunction: commonValidation,
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Center(
                      child: Builder(builder: (context) {
                        return ElevatedButton(
                          onPressed: (() => moveToNextScreen(context)),
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all(
                                  const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(30))))),
                          child: Builder(
                            builder: (context) {
                              return Container(
                                width: MediaQuery.of(context).size.width * 0.6,
                                height: 46,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: const Center(
                                  child: Text("Login"),
                                ),
                              );
                            },
                          ),
                        );
                      }),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        drawer: Drawer(),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
                icon: Center(
                  child: Icon(
                    Icons.remove_red_eye_outlined,
                    color: Colors.pink,
                  ),
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.mail,
                  color: Colors.pink,
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.location_city,
                  color: Colors.pink,
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.gamepad,
                  color: Colors.pink,
                ),
                label: "")
          ],
        ),
      ),
    );
  }
}
