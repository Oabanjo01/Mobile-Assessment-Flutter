import 'package:flutter/material.dart';
import 'package:mobile_assessment_flutter/Widgets/button.dart';

import '../Constants/constants.dart';
import '../Widgets/titletext.dart';

class IntroductoryPage extends StatefulWidget {
  const IntroductoryPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<IntroductoryPage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<IntroductoryPage> {

  final Map personal = {
    'name': 'Full name',
    'email': 'Your E-mail',
    'phone no': 'Phone Number',
    'password': 'Password',
    'confirm': 'Confirm Password'
  };
  final Map ecommerce = {
    'name': 'Business name',
    'email': 'Official E-mail',
    'phone no': 'Contact Number',
    'password': 'Password',
    'confirm': 'Confirm Password'
  };
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding:
            EdgeInsets.only(left: size.width * 0.05, right: size.width * 0.05),
        child: Container(
          height: size.height * 1,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TitleText(
                size: size,
                text1: 'What Kind of user are \nyou?',
                textboxheight: 0.2,
                text2: 'We will adapt the app to suit your \nneeds.',
              ),
              Button(buttonText: 'Personal', buttonHeight: 0.2, butttonWidth: 0.7, routename: '/signup', labelTexts: personal),
              SizedBox(height: size.height * 0.1,),
              Button(buttonText: 'E-Commerce', buttonHeight: 0.2, butttonWidth: 0.7, routename: '/signup', labelTexts: ecommerce,)
              // Button(
              //   function: () => Navigator.popAndPushNamed(context, 'signup'),
              //   buttonText: 'Personal',
              //   buttonHeight: size.height * 0.2,
              //   butttonWidth: size.width * 0.8,
              // ),
              // Button(
              //   function: () => Navigator.popAndPushNamed(context, 'signup'),
              //   buttonText: 'E-commerce',
              //   buttonHeight: size.height * 0.2,
              //   butttonWidth: size.width * 0.8,
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
