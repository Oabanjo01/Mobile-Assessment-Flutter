import 'package:flutter/material.dart';
import 'package:mobile_assessment_flutter/Routing/routing.dart';

import 'Constants/constants.dart';
import 'Screens/introductoryScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: RouteGenerator.generateRoute,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ThemeData().colorScheme.copyWith(
          primary: primaryColor,
          secondary: secondaryColor.withOpacity(0.5),
          brightness: Brightness.light,
        )
      ),
      home: IntroductoryPage(title: 'Shipify'),
    );
  }
}

