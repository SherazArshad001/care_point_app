import 'package:care_point_app/core/commen_widgets/select_role_page/select_role_button.dart';
import 'package:care_point_app/core/commen_widgets/select_role_page/select_role_text.dart';
import 'package:flutter/material.dart';

class UserRole extends StatelessWidget {
  const UserRole({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const Padding(
                padding: EdgeInsets.symmetric(vertical: 30),
                child: Text(
                  'Select Your Role',
                  style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.w800,
                      color: Color(0xff2f4f4f)),
                )),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 25),
              child: Image.asset("assets/images/DocProfile.png"),
            ),
            const SelectRoleButton(
              roleButtonText: "I'm Doctor",
            ),
            const SelectRoleText(
              rolePageText: 'We are here to to helpout your worry',
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
              child: Divider(
                thickness: 2,
                color: Colors.white,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 25),
              child: Image.asset("assets/images/DocProfile2.png"),
            ),
            const SelectRoleButton(
              roleButtonText: "I'm Patient",
            ),
            const SelectRoleText(
                rolePageText:
                    'Find doctors, book appointments, and manage your health.')
          ],
        ),
      ),
    );
  }
}
