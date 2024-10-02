import 'package:flutter/material.dart';

class AppointmentCard extends StatelessWidget {
  final String appointmentType;
  final String pricing;
  final BoxDecoration containerDecoration;
  final Color appointTextcolor;
  const AppointmentCard({
    super.key,
    required this.appointmentType,
    required this.pricing,
    required this.containerDecoration,
    required this.appointTextcolor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 14),
      child: Container(
        decoration: containerDecoration,
        width: 190,
        height: 145,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                appointmentType,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: appointTextcolor,
                ),
              ),
              const Spacer(),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '\$ $pricing',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: appointTextcolor,
                        ),
                      ),
                      Text(
                        'Per Session',
                        style: TextStyle(
                          fontSize: 12,
                          color: appointTextcolor.withOpacity(0.8),
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Image.asset(
                    "assets/images/arrow_icon_white.png",
                    color: appointTextcolor,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class AppointmentGrid extends StatelessWidget {
  final List<AppointmentCard> _cards = [
    AppointmentCard(
      appointmentType: 'General Visit',
      pricing: '50',
      containerDecoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
      ),
      appointTextcolor: const Color(0xFF1B4965),
    ),
    AppointmentCard(
      appointmentType: 'Therapeutic',
      pricing: '40',
      containerDecoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            Color(0xFF62B6CB),
            Color(0xFF1B4965),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(18),
      ),
      appointTextcolor: Colors.white,
    ),
    AppointmentCard(
      appointmentType: 'Medical Test',
      pricing: '45',
      containerDecoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
      ),
      appointTextcolor: const Color(0xFF1B4965),
    ),
    AppointmentCard(
      appointmentType: 'Specialist Visit',
      pricing: '60',
      containerDecoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
      ),
      appointTextcolor: const Color(0xFF1B4965),
    ),
  ];

  AppointmentGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 190 / 145,
      ),
      itemCount: _cards.length,
      itemBuilder: (context, index) {
        return _cards[index];
      },
    );
  }
}
