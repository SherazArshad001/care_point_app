// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:care_point_app/feature/presentation/pages/app_home_page.dart';

class SelectRoleButton extends StatelessWidget {
  final String roleButtonText;
  const SelectRoleButton({
    super.key,
    required this.roleButtonText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            minimumSize: const Size(200, 42),
            foregroundColor: const Color(0xffffffff),
            backgroundColor: const Color(0xff1b4965)),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const AppHomePage(),
            ),
          );
        },
        child: Text(
          roleButtonText,
          style: const TextStyle(
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
