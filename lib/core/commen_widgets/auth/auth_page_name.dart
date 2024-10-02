import 'package:flutter/material.dart';

class AuthPageName extends StatelessWidget {
  final String authPageName;
  const AuthPageName({super.key, required this.authPageName});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15.0),
        child: Text(
          authPageName,
          style: const TextStyle(
            color: Color(0xffbfdff5),
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}