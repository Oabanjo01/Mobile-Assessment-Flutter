import 'package:flutter/material.dart';
import 'package:mobile_assessment_flutter/Constants/constants.dart';

import '../Widgets/button.dart';

class CongratulationsScreen extends StatelessWidget {
  const CongratulationsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Padding(
        padding: EdgeInsets.only(
          left: size.width * 0.05,
          right: size.width * 0.05,
        ),
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: size.width * 0.05,
                right: size.width * 0.05,
              ),
              child: Image.asset('Shipify Assets/bg-app-cloud.png'),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('Shipify Assets/ic-congratulations.png'),
                SizedBox(height: size.height * 0.1,),
                Button(
                  curve: 30,
                  buttonHeight: 0.07,
                  butttonWidth: 0.6,
                  routename: '/homepage',
                  buttonText: 'Continue',
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
