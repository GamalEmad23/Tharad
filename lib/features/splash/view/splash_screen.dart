import 'package:flutter/material.dart';
import 'package:tharad/core/themes/color/app_colors.dart';
import 'package:tharad/features/auth/view/sign_up_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3)).then(
      (value) => Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => SignUpScreen()),
        (route) => false,
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.sizeOf(context).height;
    double w = MediaQuery.sizeOf(context).width;
    return Scaffold(
      body: Column(
        mainAxisAlignment: .center,
        children: [
          Center(
            child: Image.asset(
              "assets/images/logo.png",
              width: w * .9,
              height: h * .2,
            ),
          ),

          CircularProgressIndicator(color: AppColors.primaryDark),
        ],
      ),
    );
  }
}
