import 'package:flutter/material.dart';
import 'package:mobile_assessment_flutter/Screens/Main%20Pages/homepage.dart';
import 'package:mobile_assessment_flutter/Screens/Registration/signin.dart';
import 'package:mobile_assessment_flutter/Screens/Registration/signup.dart';
import 'package:mobile_assessment_flutter/Screens/Registration/verification.dart';
import 'package:mobile_assessment_flutter/Screens/introductoryScreen.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final dynamic args = settings.arguments;

    switch (settings.name) {
      case '/splashscreen':
        return MaterialPageRoute(builder: (_) => IntroductoryPage(),
      );
      case '/signin':
        return MaterialPageRoute(builder: (_) => Signin(),
      );
      case '/signup':
        return MaterialPageRoute(builder: (_) => SignUp(data: args,)
      );
      case '/homepage':
        return MaterialPageRoute(builder: (_) => HomePage()
      );
      case '/verificationpage':
        return MaterialPageRoute(builder: (_) => VerificationPage()
      );
      default: 
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return const Scaffold(
        body: Center(
          child: Text(
            'Error!',
            style: TextStyle(color: Colors.red, fontSize: 30),
          ),
        ),
      );
    });
  }
}