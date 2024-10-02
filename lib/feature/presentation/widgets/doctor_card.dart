import 'package:flutter/material.dart';

class DoctorCard extends StatelessWidget {
  final String doctorImage;
  final String doctorName;
  final String doctorField;
  final double rating;

  const DoctorCard({
    super.key,
    required this.doctorImage,
    required this.doctorName,
    required this.doctorField,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 25.0),
      child: Container(
        decoration: BoxDecoration(
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
        width: 242,
        height: 264,
        child: Stack(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(
                  bottom: 0,
                  top: 12,
                ),
                child: Image.asset('assets/images/$doctorImage'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 183,
              ),
              child: Center(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white.withOpacity(0.8),
                  ),
                  height: 80,
                  width: 190,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 14.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          doctorName,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xff1b4965),
                          ),
                        ),
                        Text(
                          doctorField,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xff2f7ab7),
                          ),
                        ),
                        Row(
                          children: [
                            Image.asset('assets/images/rating_star.png'),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Text("$rating"),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
