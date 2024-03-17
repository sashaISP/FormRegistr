import 'package:flutter/material.dart';

class ExampleTextField extends StatelessWidget {
  final String information;
  const ExampleTextField({super.key, required this.information});
  @override
  Widget build(BuildContext context) {
    return TextField(
      style: const TextStyle(
        fontSize: 20,
        color: Colors.black,
      ),
      decoration: InputDecoration(
        hintStyle: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
          color: Colors.black,
        ),
        hintText: information,
        border: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black,
            width: 3,
          ),
        ),
      ),
    );
  }
}
