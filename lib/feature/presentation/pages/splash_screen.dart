import 'package:care_point_app/core/commen_widgets/custom_curve.dart';
import 'package:care_point_app/core/commen_widgets/loading_dot.dart';
import 'package:care_point_app/core/commen_widgets/splash_content.dart';
import 'package:care_point_app/feature/presentation/widgets/splash_button.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        itemCount: content.length,
        onPageChanged: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        itemBuilder: (index, i) {
          return Stack(
            children: [
              SizedBox(
                height: MediaQuery.sizeOf(context).height,
                width: MediaQuery.sizeOf(context).width,
              ),
              Column(
                children: [
                  ClipPath(
                    clipper: BottomCenterCurveClipper(),
                    child: Container(
                      height: 612,
                      width: MediaQuery.sizeOf(context).width,
                      color: const Color(0xFF62B6CB),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 25),
                        child: Image.asset(
                          content[i].image,
                          height: 320,
                          width: MediaQuery.sizeOf(context).width,
                        ),
                      ),
                    ),
                  ),
                  Text(
                    content[i].title,
                    textAlign: TextAlign.center,
                    style: i == 0
                        ? const TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff1B4965),
                          )
                        : const TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff1B4965),
                          ),
                  ),
                  SizedBox(
                    width: 383,
                    child: Text(
                      content[i].description,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff6D6D6D),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SplashDotIndicator(
                          isActive: 0 == _currentIndex,
                        ),
                        SplashDotIndicator(
                          isActive: 1 == _currentIndex,
                        ),
                        SplashDotIndicator(
                          isActive: 2 == _currentIndex,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SplashButton(
                    currentScreen: _currentIndex,
                  )
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}
