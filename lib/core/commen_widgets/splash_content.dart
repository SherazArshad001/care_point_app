class SplashContent {
  String image;
  String title;
  String description;
  SplashContent({
    required this.image,
    required this.title,
    required this.description,
  });
}

List<SplashContent> content = [
  SplashContent(
    image: 'assets/images/Doctor.png',
    title: 'CarePoint',
    description: 'Connecting Patients and Doctors with Ease',
  ),
  SplashContent(
    image: 'assets/images/Doctor2.png',
    title: 'Find Your Perfect Doctor',
    description:
        'Search, compare, and select the best doctor for your health needs.',
  ),
  SplashContent(
    image: 'assets/images/Doctor3.png',
    title: 'Manage Appointments Effortlessly',
    description:
        'Patients can book appointments, and doctors can streamline clinic workflows.',
  ),
];
