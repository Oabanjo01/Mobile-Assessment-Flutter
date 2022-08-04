import 'package:flutter/material.dart';
import 'package:mobile_assessment_flutter/Constants/constants.dart';


class TitleText extends StatelessWidget {
  const TitleText(
      {Key? key,
      required this.size,
      required this.textboxheight,
      required this.text1,
      required this.text2,
      this.textColor3,
      this.textColor4,
      this.textColor5,
      this.text3,
      this.text4,
      this.text5})
      : super(key: key);

  final Size size;
  final double textboxheight;
  final String text1;
  final String text2;
  final String? text3;
  final String? text4;
  final String? text5;
  final Color? textColor3;
  final Color? textColor4;
  final Color? textColor5;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      height: size.height * textboxheight,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(textAlign: TextAlign.left, text: TextSpan( children: [
            TextSpan(text: text1, style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w500, color: textColor),),
          ]),),
          SizedBox(height: size.height * 0.015,),
          RichText(textAlign: TextAlign.left, text: TextSpan( children: [
            TextSpan(text: text2, style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w300, color: textColor),),
            TextSpan(text: text3, style: TextStyle(fontSize: 15, fontWeight: FontWeight.w300, color: textColor3, ),),
            TextSpan(text: text4, style: TextStyle(fontSize: 15, fontWeight: FontWeight.w300, color: textColor4, ),),
            TextSpan(text: text5, style: TextStyle(fontSize: 15, fontWeight: FontWeight.w300, color: textColor5, ),),
          ]),),
        ],
      ),
    );
  }
}

