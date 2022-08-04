import 'package:flutter/material.dart';
import 'package:mobile_assessment_flutter/Constants/constants.dart';
import 'package:mobile_assessment_flutter/Widgets/button.dart';
import 'package:mobile_assessment_flutter/Widgets/textfield.dart';
import 'package:mobile_assessment_flutter/Widgets/titletext.dart';

class Signin extends StatelessWidget {
  Signin({Key? key, }) : super(key: key);


   final Map signin = {
    'contact': 'Phone Number / E-mail',
    'password': 'Password'
  };

  final TextEditingController contactController = TextEditingController();
  final TextEditingController passwordController= TextEditingController();

  @override
  Widget build(BuildContext context) {
    final data = ModalRoute.of(context)!.settings.arguments;
    final size= MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(left: size.width * 0.05, right: size.width * 0.05,),
            child: Image.asset('Shipify Assets/bg-app-cloud.png'),
          ),
          Padding(
            padding: EdgeInsets.only(left: size.width * 0.05, right: size.width * 0.05,),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TitleText(size: size, textboxheight: 0.15, text1: 'Sign In', text2: 'Sign in to continue to Cargo Express'),
                TextFields(headerText: signin['contact'], controller: contactController),
                TextFields(headerText: signin['password'], controller: passwordController),
                TextButton(onPressed: () {}, child: const Text('Create an Account')),
                SizedBox(height: size.height * 0.1,),
                Button(curve: 25, buttonText: 'Sign In', routename: 'routename', buttonHeight: 0.08, butttonWidth: 0.4)
              ],
            ),
          ),
        ]
      ),
    );
  }
}