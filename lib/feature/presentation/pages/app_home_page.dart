import 'package:care_point_app/core/commen_widgets/custom_navbar.dart';
import 'package:care_point_app/feature/presentation/widgets/appbar.dart';
import 'package:care_point_app/feature/presentation/widgets/appointment_card.dart';
import 'package:care_point_app/feature/presentation/widgets/doctor_card.dart';
import 'package:care_point_app/feature/presentation/widgets/home_page_navbar.dart';
import 'package:care_point_app/feature/presentation/widgets/search_textfield.dart';
import 'package:flutter/material.dart';

class AppHomePage extends StatelessWidget {
  const AppHomePage({super.key});

  final List<String> filters = const [
    "Find a Doctor",
    "Book An Appointment",
    "My Appointment",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(
        height: 150,
      ),
      bottomNavigationBar: const BottomNavBar(initialIndex: 0),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(12.0),
            child: Row(
              children: [
                SizedBox(
                  width: 320,
                  child: SearchTextField(),
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  child: ImageIcon(AssetImage('assets/images/menu.png')),
                )
              ],
            ),
          ),
          HomePageChip(filters: filters),
          const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 25.0,
              vertical: 15,
            ),
            child: Text(
              'Top Doctor in Your City',
              style: TextStyle(
                color: Color(0xff1b4965),
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(
              left: 12.0,
            ),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  DoctorCard(
                    doctorImage: 'doctor_in_city.png',
                    doctorName: 'Dr. Emilly Johnson',
                    doctorField: 'Dermatologist',
                    rating: 4.8,
                  ),
                  DoctorCard(
                    doctorImage: 'doctor_in_city1.png',
                    doctorName: 'Dr. Smith Johnson',
                    doctorField: 'Dermatologist',
                    rating: 4.9,
                  ),
                  DoctorCard(
                    doctorImage: 'doctor_in_city.png',
                    doctorName: 'Dr. Emilly Johnson',
                    doctorField: 'Dermatologist',
                    rating: 4.8,
                  ),
                ],
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 25.0,
              vertical: 15,
            ),
            child: Text(
              "Let's find Your Doctor",
              style: TextStyle(
                color: Color(0xff1b4965),
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ),
          Expanded(
            child: AppointmentGrid(),
          )
        ],
      ),
    );
  }
}
