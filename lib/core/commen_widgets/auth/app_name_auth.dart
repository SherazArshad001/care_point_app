import 'package:flutter/material.dart';

class AppNameAuthPage extends StatelessWidget {
  const AppNameAuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 50, bottom: 25),
      child: Text(
        'CarePoint',
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.w700,
          color: Color(0xffffffff),
        ),
      ),
    );
  }
}
