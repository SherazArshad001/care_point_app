import 'package:flutter/material.dart';

class SelectRoleText extends StatelessWidget {
  final String rolePageText;
  const SelectRoleText({
    super.key,
    required this.rolePageText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Text(
        rolePageText,
        style: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: Color(0xff2f4f4f),
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
