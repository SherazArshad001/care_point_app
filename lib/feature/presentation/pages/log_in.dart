import 'dart:ui';

import 'package:care_point_app/core/commen_widgets/auth/app_name_auth.dart';
import 'package:care_point_app/core/commen_widgets/auth/auth_page_devider.dart';
import 'package:care_point_app/core/commen_widgets/auth/auth_page_name.dart';
import 'package:care_point_app/core/commen_widgets/custom_curve.dart';
import 'package:care_point_app/core/mixin/validator.dart';
import 'package:care_point_app/feature/presentation/pages/sign_up.dart';
import 'package:care_point_app/feature/presentation/widgets/app_text_field.dart';
import 'package:care_point_app/feature/presentation/widgets/chossen_field_info.dart';
import 'package:care_point_app/feature/presentation/widgets/login_button.dart';
import 'package:flutter/material.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({super.key});

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> with Validator {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Stack(
          children: [
            Positioned(
              child: ClipPath(
                clipper: BottomCenterCurveClipper(),
                child: Container(
                    height: 612,
                    width: MediaQuery.sizeOf(context).width,
                    color: const Color(0xFF1b4965)),
              ),
            ),
            Center(
              child: Column(
                children: [
                  const AppNameAuthPage(),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(25),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 150, sigmaY: 150),
                      child: Expanded(
                        child: Container(
                          width: 350,
                          decoration: BoxDecoration(
                              color: const Color(0xff62b6cb).withOpacity(0.25),
                              border: Border.all(
                                  width: 0.6,
                                  color: Colors.white.withOpacity(0.5)),
                              borderRadius: BorderRadius.circular(25)),
                          child: Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: Form(
                              key: formKey,
                              child: IntrinsicHeight(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const AuthPageName(
                                        authPageName: 'Loging In'),
                                    const SizedBox(
                                      height: 45,
                                    ),
                                    const ChossenFieldInfoName(
                                        fieldName: 'User Name'),
                                    AppTextField(
                                        controller: _nameController,
                                        labelText: 'Enter Your User Name',
                                        validator: validateFullName),
                                    const ChossenFieldInfoName(
                                      fieldName: 'Password',
                                    ),
                                    AppTextField(
                                      controller: _passwordController,
                                      obscureText: true,
                                      labelText: 'Enter Your Password',
                                      validator: passwordValidator,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 155),
                                      child: TextButton(
                                        onPressed: () {},
                                        child: const Text(
                                          'Forget Password',
                                          style: TextStyle(
                                              color: Color(0xffcae9ff),
                                              fontWeight: FontWeight.w200),
                                        ),
                                      ),
                                    ),
                                    LogInButton(
                                        logInButtonText: 'Log In',
                                        formKey: formKey),
                                    const AuthPageDevider(),
                                    const FacebookGoogleImage()
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const TextButtonAuth(
                      accountAboutText: "Don't have an account ?",
                      buttonText: 'Sign Up'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FacebookGoogleImage extends StatelessWidget {
  const FacebookGoogleImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/facebook.png',
            width: 40,
            height: 40,
          ),
          const SizedBox(
            width: 25,
          ),
          Image.asset(
            'assets/images/google.png',
            width: 40,
            height: 40,
          ),
        ],
      ),
    );
  }
}
