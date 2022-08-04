import 'package:flutter/material.dart';
import 'package:mobile_assessment_flutter/Constants/constants.dart';

class Button extends StatelessWidget {
  Button(
      {Key? key,
      // required this.function,
      required this.curve,
      this.borderColor = primaryColor,
      this.color =primaryColor,
      this.buttontextColor = textColor,
      required this.buttonText,
      required this.routename,
      required this.buttonHeight,
      this.labelTexts,
      required this.butttonWidth})
      : super(key: key);

  // Function function;
  final String buttonText;
  final double buttonHeight;
  final double butttonWidth;
  final Color borderColor;
  final Color color;
  final String routename;
  final Map? labelTexts;
  final double curve;
  final Color buttontextColor;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * butttonWidth,
      height: size.height * buttonHeight,
      child: ElevatedButton(
        style: ButtonStyle(
          elevation: MaterialStateProperty.all<double>(0),
          side: MaterialStateProperty.all<BorderSide>(BorderSide(color: color, width: 3,style: BorderStyle.solid)),
          backgroundColor: MaterialStateProperty.all<Color>(color),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(borderRadius: BorderRadius.circular(curve),))
        ),
        onPressed: () =>
            Navigator.of(context).pushNamed(routename, arguments: labelTexts),
        child: Text(buttonText, style: TextStyle(color: buttontextColor),),
      ),
    );
  }
}
