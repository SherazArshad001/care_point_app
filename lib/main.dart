import 'package:care_point_app/feature/presentation/pages/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFFCAE9FF),
          surface: const Color(0xFFCAE9FF),
        ),
        useMaterial3: true,
      ),
      home: const SplashScreen(),
    );
  }
}
