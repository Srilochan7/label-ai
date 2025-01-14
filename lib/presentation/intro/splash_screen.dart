import 'package:flutter/material.dart';
import 'package:label/presentation/intro/onboard_Screen.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter/widgets.dart'; // Import this for the navigation

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Delay the navigation for 5 seconds
    Future.delayed(Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => OnboardScreen()), // Replace with your onboarding screen
      );
    });

    return Sizer(
      builder: (context, orientation, deviceType) {
        return Scaffold(
          body: Column(
            children: [
              Container(
                height: 100.h,
                width: 100.w, // Adjusted width to ensure the image fits on screen
                child: Image.asset('assets/bg-logo.png'),
              ),
            ],
          ),
        );
      },
    );
  }
}