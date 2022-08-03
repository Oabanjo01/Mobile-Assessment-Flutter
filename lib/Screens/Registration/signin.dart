import 'package:flutter/material.dart';

class Signin extends StatelessWidget {
  const Signin({Key? key, required this.data,}) : super(key: key);

  final Map data;

  @override
  Widget build(BuildContext context) {
    // final labeltexts = ModalRoute.of(context).settings!.arguments;
    return Scaffold(
      body: Center(child: Text(data['name'])),
    );
  }
}