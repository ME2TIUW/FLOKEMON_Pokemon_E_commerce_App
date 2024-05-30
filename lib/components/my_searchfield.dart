import 'package:flutter/material.dart';

class MySearchField extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final controller;
  final String hintText;
  final bool obscureText;

  const MySearchField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Color.fromARGB(255, 161, 161, 161)),
          ),
          fillColor: const Color.fromARGB(255, 227, 227, 227),
          filled: true,
          hintText: hintText,
          hintStyle:
              const TextStyle(color: Color.fromARGB(255, 171, 171, 171))),
    );
  }
}
