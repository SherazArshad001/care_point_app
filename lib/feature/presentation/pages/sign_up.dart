import 'dart:ui';

import 'package:care_point_app/core/commen_widgets/auth/app_name_auth.dart';
import 'package:care_point_app/core/commen_widgets/auth/auth_page_devider.dart';
import 'package:care_point_app/core/commen_widgets/auth/auth_page_name.dart';
import 'package:care_point_app/core/commen_widgets/custom_curve.dart';
import 'package:care_point_app/core/extensions/validation_ext.dart';
import 'package:care_point_app/core/mixin/validator.dart';
import 'package:care_point_app/feature/presentation/pages/log_in.dart';
import 'package:care_point_app/feature/presentation/widgets/app_text_field.dart';
import 'package:care_point_app/feature/presentation/widgets/chossen_field_info.dart';
import 'package:care_point_app/feature/presentation/widgets/login_button.dart';
import 'package:flutter/material.dart';

final GlobalKey<FormState> formKey = GlobalKey<FormState>();

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> with Validator {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  ClipPath(
                    clipper: BottomCenterCurveClipper(),
                    child: Container(
                      height: 612,
                      width: MediaQuery.sizeOf(context).width,
                      color: const Color(0xFF1b4965),
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
                            child: Container(
                              width: 350,
                              decoration: BoxDecoration(
                                border:
                                    Border.all(width: 0.6, color: Colors.white),
                                color:
                                    const Color(0xff62b6cb).withOpacity(0.25),
                                borderRadius: BorderRadius.circular(25),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(18.0),
                                child: Form(
                                  key: formKey,
                                  child: IntrinsicHeight(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const AuthPageName(
                                            authPageName: 'Sign Up'),
                                        const ChossenFieldInfoName(
                                          fieldName: 'Full Name',
                                        ),
                                        AppTextField(
                                          controller: _nameController,
                                          labelText: 'Enter Your Name',
                                          validator: validateFullName,
                                        ),
                                        const ChossenFieldInfoName(
                                          fieldName: ' Email',
                                        ),
                                        AppTextField(
                                          controller: _emailController,
                                          labelText: 'Enter Your Email',
                                          validator: (value) {
                                            String? emailValidation =
                                                value?.emailValidation;
                                            if (emailValidation != null) {
                                              return emailValidation;
                                            }
                                            return null;
                                          },
                                        ),
                                        const ChossenFieldInfoName(
                                          fieldName: 'Password',
                                        ),
                                        AppTextField(
                                          controller: _passwordController,
                                          obscureText: true,
                                          labelText: 'Enter Your Password',
                                          validator: passwordValidator,
                                        ),
                                        const ChossenFieldInfoName(
                                          fieldName: 'Confirm Password',
                                        ),
                                        AppTextField(
                                          controller:
                                              _confirmPasswordController,
                                          obscureText: true,
                                          labelText: 'Re Enter Your Password',
                                          validator: (value) {
                                            if (value !=
                                                _passwordController.text) {
                                              return 'Password do not match';
                                            }
                                            return null;
                                          },
                                        ),
                                        LogInButton(
                                          logInButtonText: 'Sign Up',
                                          formKey: formKey,
                                        ),
                                        const AuthPageDevider(),
                                        const FacebookGoogleImage(),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        const TextButtonAuth(
                          accountAboutText: 'Already have an account ?',
                          buttonText: 'Log In',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TextButtonAuth extends StatelessWidget {
  final String accountAboutText;
  final String buttonText;

  const TextButtonAuth({
    super.key,
    required this.accountAboutText,
    required this.buttonText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 18, bottom: 8),
          child: Text(
            accountAboutText,
            style: const TextStyle(
              color: Color(0xff1b4965),
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
              minimumSize: const Size(150, 42),
              foregroundColor: const Color(0xffffffff),
              backgroundColor: const Color(0xff1b4965)),
          onPressed: () {
            if (buttonText == 'Sign Up') {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SignUpPage(),
                ),
              );
            } else {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const LogInPage(),
                ),
              );
            }
          },
          child: Text(buttonText),
        )
      ],
    );
  }
}
