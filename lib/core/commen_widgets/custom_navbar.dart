import 'package:care_point_app/feature/presentation/pages/app_home_page.dart';
import 'package:care_point_app/feature/presentation/pages/calendersearch.dart';
import 'package:care_point_app/feature/presentation/pages/message.dart';
import 'package:care_point_app/feature/presentation/pages/profile_screen.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({
    this.initialIndex = 0,
    super.key,
  });
  final int initialIndex;

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  late int _currentIndex;
  @override
  void initState() {
    super.initState();
    _currentIndex = widget.initialIndex;
  }

  final List<Widget> _screens = [
    const AppHomePage(),
    const CelenderSearch(),
    const MessagesScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: Container(
        height: 80,
        width: MediaQuery.sizeOf(context).width,
        color: const Color(0xff1b4965),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                  setState(() {
                    _currentIndex = 0;
                  });
                },
                child: Image.asset(
                  'assets/images/home_icon.png',
                  width: 50,
                  color: _currentIndex == 0 ? Colors.white : Colors.grey,
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    _currentIndex = 1;
                  });
                },
                child: Image.asset(
                  'assets/images/calender.png',
                  color: _currentIndex == 1 ? Colors.white : Colors.grey,
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    _currentIndex = 2;
                  });
                },
                child: Image.asset(
                  'assets/images/flowbite_messages.png',
                  color: _currentIndex == 2 ? Colors.white : Colors.grey,
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    _currentIndex = 3;
                  });
                },
                child: Image.asset(
                  'assets/images/icon_profile.png',
                  color: _currentIndex == 3 ? Colors.white : Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
