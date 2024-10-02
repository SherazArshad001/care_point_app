import 'package:flutter/material.dart';

class AuthPageDevider extends StatelessWidget {
  const AuthPageDevider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:
          MainAxisAlignment.spaceBetween,
      children: [
        const Expanded(
          child: Divider(
            thickness: 1,
            color: Colors.white,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(6),
          child: Image.asset(
            'assets/images/or.png',
            width: 51,
            height: 40,
          ),
        ),
        const Expanded(
          child: Divider(
            thickness: 1,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}