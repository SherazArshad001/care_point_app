import 'package:flutter/material.dart';

class SplashButton extends StatelessWidget {
  final int currentScreen;
  final VoidCallback? onPressed;
  const SplashButton({
    super.key,
    required this.currentScreen,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        fixedSize: WidgetStateProperty.all(
          const Size(double.infinity, 50),
        ),
        foregroundColor: WidgetStateProperty.all(
          const Color(0xffffffff),
        ),
        backgroundColor: WidgetStateProperty.all(
          const Color(0xff1b4965),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          currentScreen == 2 ? 'Get Started' : 'Swipe to continue',
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
