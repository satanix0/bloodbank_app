import 'package:bloodbank_app/constants/routes.dart';
import 'package:bloodbank_app/screens/onboarding/onboarding0.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(
      Duration(seconds: 3),
      () => Navigator.pushNamed(context, Routes.onboardingScreen),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Splash Screen",
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {},
        child: const Icon(
          Icons.add,
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Image.asset(
            "assets/bloodbank.png",
          ),
        ),
      ),
    );
  }
}
