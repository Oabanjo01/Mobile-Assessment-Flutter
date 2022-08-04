import 'package:flutter/material.dart';

import '../Constants/constants.dart';

class TextFields extends StatelessWidget {
  const TextFields({
    Key? key,
    required this.headerText,
    this.hideText = false,
    required this.controller,
    this.prefix,
  }) : super(key: key);

  final TextEditingController controller;
  final String headerText;
  final bool hideText;
  final Widget? prefix;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(headerText, textAlign: TextAlign.left,),
        SizedBox(height: size.height * 0.01,),
        SizedBox(
          height: size.height * 0.055,
          child: TextField(
            cursorColor: primaryColor.withOpacity(0.7),
            controller: controller,
            obscureText: hideText,
            maxLines: 1,
            decoration: InputDecoration(
              filled: true,
              fillColor: secondaryColor,
              // contentPadding: EdgeInsets.only(left: 10, right: 10),
              prefixIcon: prefix,
              focusColor: primaryColor,
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide(color: secondaryColor, )),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide:
                      BorderSide(color: secondaryColor.withOpacity(0.5), width: 0)),
            ),
          ),
        ),
        SizedBox(height: size.height * 0.01,),
      ],
    );
  }
}
