import 'package:flutter/material.dart';


class TitleText extends StatelessWidget {
  const TitleText(
      {Key? key,
      required this.size,
      required this.textboxheight,
      required this.text1,
      required this.text2})
      : super(key: key);

  final Size size;
  final double textboxheight;
  final String text1;
  final String text2;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      height: size.height * textboxheight,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(text1,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w500), textAlign: TextAlign.left),
          SizedBox(height: size.height * 0.015,),
          Text(text2,style: const TextStyle(fontWeight: FontWeight.w300), textAlign: TextAlign.left)
        ],
      ),
    );
  }
}
