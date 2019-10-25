import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  final TextEditingController controller;
  final String label;
  final String hintText;
  final IconData iconData;

  InputField({
    this.controller,
    this.label,
    this.hintText,
    this.iconData,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
            icon: iconData != null ? Icon(iconData) : null,
            labelText: label,
            hintText: hintText),
        style: TextStyle(
          fontSize: 24,
        ),
        keyboardType: TextInputType.number,
      ),
    );
  }
}
