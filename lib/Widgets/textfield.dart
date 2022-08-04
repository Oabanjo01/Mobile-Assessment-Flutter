import 'package:flutter/material.dart';

import '../Constants/constants.dart';

class TextFields extends StatelessWidget {
  const TextFields({
    Key? key,
    this.hideText = false,
    required this.controller,
    required this.helperText,
    this.icon,
  }) : super(key: key);

  final TextEditingController controller;
  final bool hideText;
  final String helperText;
  final Icon? icon;

  @override
  Widget build(BuildContext context) {
    return TextField(
      textAlign: TextAlign.center,
      cursorColor: primaryColor.withOpacity(0.7),
      controller: controller,
      obscureText: hideText,
      maxLines: 1,
      decoration: InputDecoration(
        // contentPadding: EdgeInsets.only(left: 10, right: 10),
        prefixIcon: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: icon,
        ),
        focusColor: primaryColor,
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(color: primaryColor, width: 1.5)),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide:
                BorderSide(color: primaryColor.withOpacity(0.5), width: 1.5)),
        helperText: helperText,
        helperStyle: TextStyle(color: primaryColor.withOpacity(0.6)),
      ),
    );
  }
}
