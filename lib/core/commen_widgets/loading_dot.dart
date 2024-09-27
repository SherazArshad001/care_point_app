import 'package:flutter/material.dart';

class SplashDotIndicator extends StatelessWidget {
  final bool isActive;

  const SplashDotIndicator({
    super.key,
    required this.isActive,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 8),
      height: 17,
      width: isActive ? 33 : 17,
      decoration: BoxDecoration(
        color: isActive ? const Color(0xff62b6bc) : const Color(0xffffffff),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 2,
            offset: const Offset(0, 2),
          ),
        ],
      ),
    );
  }
}
