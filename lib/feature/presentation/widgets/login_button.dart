// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:care_point_app/feature/presentation/pages/role_page.dart';

class LogInButton extends StatelessWidget {
  final String logInButtonText;
  final GlobalKey<FormState> formKey;
  const LogInButton({
    super.key,
    required this.logInButtonText,
    required this.formKey,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          minimumSize: const Size(308, 60),
          foregroundColor: Colors.black,
        ),
        onPressed: () {
          if (formKey.currentState!.validate()) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const UserRole(),
              ),
            );
          }
        },
        child: Text(
          logInButtonText,
          style: const TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
