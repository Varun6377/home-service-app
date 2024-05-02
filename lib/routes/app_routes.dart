import 'package:flutter/material.dart';
import '../pages/address_screen.dart';
import '../pages/otp_screen.dart';
import '../pages/login_old_users_screen.dart';
import '../pages/login_screen.dart';
import '../pages/splash_screen.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String loginScreen = '/login_screen';

  static const String loginOldUsersScreen = '/login_old_users_screen';

  static const String enterOtpScreen = '/enter_otp_screen';

  static const String addNewAddressScreen = '/add_new_address_screen';

  static Map<String, WidgetBuilder> routes = {
    splashScreen: (context) => SplashScreen(),
    loginScreen: (context) => LoginScreen(),
    loginOldUsersScreen: (context) => LoginOldUsersScreen(),
    enterOtpScreen: (context) => EnterOtpScreen(),
    addNewAddressScreen: (context) => AddNewAddressScreen(),
  };
}
