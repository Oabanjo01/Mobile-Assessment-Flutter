import 'package:flutter/material.dart';
import 'package:mobile_assessment_flutter/Screens/Registration/signin.dart';
import 'package:mobile_assessment_flutter/Screens/Registration/signup.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final dynamic args = settings.arguments;

    switch (settings.name) {
      case '/signin':
        return MaterialPageRoute(builder: (_) => Signin(data: args),
      );
      case '/signup':
        return MaterialPageRoute(builder: (_) => SignUp(data: args,)
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