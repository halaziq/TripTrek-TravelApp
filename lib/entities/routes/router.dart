import 'package:flutter/material.dart';
import 'package:trip_trek/entities/routes/routes.dart';
import 'package:trip_trek/screens/authentication_screens/forgot_password.dart';
import 'package:trip_trek/screens/authentication_screens/sign_in_screen.dart';
import 'package:trip_trek/screens/authentication_screens/sign_up_screen.dart';
import 'package:trip_trek/screens/custom_navigation_bar.dart';
import 'package:trip_trek/screens/home_screens/home_screen.dart';
import 'package:trip_trek/screens/onboarding/onboarding.dart';

class AppRouter{
  static Route<dynamic> onGenerateRoute(RouteSettings settings){
    switch(settings.name){
      case Routes.onboarding:
      return MaterialPageRoute(builder: (_)=> const OnboardingScreen());
      case Routes.signIn:
      return MaterialPageRoute(builder: (_)=> const SignInScreen());
      case Routes.signUp:
      return MaterialPageRoute(builder: (_)=> const SignUpScreen());
      case Routes.forgotPassword:
      return MaterialPageRoute(builder: (_)=> const ForgotPasswordScreen());
      case Routes.home:
      return MaterialPageRoute(builder: (_)=> const HomeScreen());
      case Routes.navigation:
      return MaterialPageRoute(builder: (_)=> const CustomNavigationBar());
      default:
      return MaterialPageRoute(builder: (_)=> const Scaffold(
        body: Center(
          child: Text(" No Page Found"),
        ),

      ));
    }
  }
}