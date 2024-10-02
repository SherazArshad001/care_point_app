// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class ChossenFieldInfoName extends StatelessWidget {
  final String fieldName;
  const ChossenFieldInfoName({
    super.key,
    required this.fieldName,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 14),
      child: Text(
        fieldName,
        textAlign: TextAlign.end,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 14,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
