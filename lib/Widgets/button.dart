import 'package:flutter/material.dart';
import 'package:mobile_assessment_flutter/Constants/constants.dart';

class Button extends StatelessWidget {
  Button(
      {Key? key,
      // required this.function,
      required this.buttonText,
      required this.routename,
      required this.buttonHeight,
      required this.labelTexts,
      required this.butttonWidth})
      : super(key: key);

  // Function function;
  final String buttonText;
  final double buttonHeight;
  final double butttonWidth;
  final String routename;
  final Map labelTexts;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * butttonWidth,
      height: size.height * buttonHeight,
      child: ElevatedButton(
        style: ButtonStyle(

          shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30),))
        ),
        onPressed: () =>
            Navigator.of(context).pushNamed(routename, arguments: labelTexts),
        child: Text(buttonText),
      ),
    );
  }
}
