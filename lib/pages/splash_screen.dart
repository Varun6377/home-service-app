import 'dart:async';
import 'package:flutter/material.dart';
import 'package:home_service/pages/login_screen.dart';
import '../utils/app_export.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    navigateToScreen();
  }

  navigateToScreen() async {
    await Future.delayed(Duration(seconds: 2));
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (context) => LoginScreen()),
      (route) => false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.primary,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 29),
          child: Column(
            children: [
              Spacer(
                flex: 53,
              ),
              CustomImageView(
                imagePath: ImageConstant.imgLayer1,
                height: 198,
                width: 170,
              ),
              Spacer(
                flex: 46,
              ),
              Text(
                "Powered by Oyelabs",
                style: CustomTextStyles.bodyMediumInterBluegray400,
              ),
              Text(
                "With Love ❤️".toUpperCase(),
                style: CustomTextStyles.bodyMediumInterIndigo300,
              )
            ],
          ),
        ),
      ),
    );
  }
}
