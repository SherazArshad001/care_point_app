import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double? height;
  const MyAppBar({
    super.key,
    this.height = 150.0,
  });

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: Size.fromHeight(height!),
      child: Container(
        color: const Color(0xff1b4965),
        child: Row(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 50, left: 20, bottom: 6),
              child: Text(
                'CarePoint',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 26,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(top: 30, right: 25),
              child: Row(
                children: [
                  Image.asset('assets/images/person_icon.png'),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Image.asset('assets/images/notification_bell.png'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height!);
}
