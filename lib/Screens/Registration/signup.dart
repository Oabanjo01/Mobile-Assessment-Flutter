import 'package:flutter/material.dart';
import 'package:mobile_assessment_flutter/Constants/constants.dart';
import 'package:mobile_assessment_flutter/Widgets/button.dart';
import 'package:mobile_assessment_flutter/Widgets/titletext.dart';

import '../../Widgets/textfield.dart';

class SignUp extends StatelessWidget {
  SignUp({
    Key? key,
    required this.data,
  }) : super(key: key);

  final Map data;
  final TextEditingController titleController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController contactControler = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SingleChildScrollView(
        child: Stack(children: [
          Padding(
            padding: EdgeInsets.only(
              left: size.width * 0.05,
              right: size.width * 0.05,
            ),
            child: Image.asset('Shipify Assets/bg-app-cloud.png'),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: size.width * 0.05,
              right: size.width * 0.05,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: size.height * 0.1,
                ),
                Container(
                  alignment: Alignment.bottomLeft,
                  height: size.height * 0.12,
                  child: TitleText(
                      size: size,
                      textboxheight: 0.2,
                      text1: 'Welcome!',
                      text2:
                          'Create an account to get started \nwith Cargo Express'),
                ),
                SizedBox(
                  height: size.height * 0.55,
                  child: Column(
                    children: [
                      TextFields(
                        controller: titleController,
                        headerText: data['name'],
                      ),
                      TextFields(
                        controller: emailController,
                        headerText: data['email'],
                      ),
                      TextFields(
                        controller: contactControler,
                        headerText: data['phone no'],
                      ),
                      TextFields(
                        controller: passwordController,
                        headerText: data['password'],
                      ),
                      TextFields(
                        controller: confirmPasswordController,
                        headerText: data['confirm'],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('Already have an account?'),
                        TextButton(
                            onPressed: () {
                              Navigator.pushNamed(
                                context,
                                '/signin',
                              );
                            },
                            child: const Text('Log in'))
                      ]),
                ),
                SizedBox(
                  height: size.height * 0.1,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Button(
                            buttonText: 'Back',
                            routename: '/splashscreen',
                            buttonHeight: 0.07,
                            butttonWidth: 0.3,
                            color: backgroundColor.withOpacity(0.9),
                            curve: 25,
                            borderColor: secondaryColor),
                        Button(
                          buttonText: 'Next',
                          routename: '/verificationpage',
                          buttonHeight: 0.07,
                          butttonWidth: 0.3,
                          curve: 25,
                          buttontextColor: secondaryColor,
                        )
                      ]),
                ),
                SizedBox(
                  height: size.height * 0.05,
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
