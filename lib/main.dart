import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:trip_trek/entities/routes/routes.dart';
import 'package:trip_trek/entities/routes/router.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = await SharedPreferences.getInstance();
  final showOnboarding = prefs.getBool('showOnboarding') ?? true;
  runApp( MyApp(showOnboarding: showOnboarding,));
}

class MyApp extends StatelessWidget {
  final bool showOnboarding;
  const MyApp({
    required this.showOnboarding,
    super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      initialRoute: showOnboarding == false? Routes.signIn : Routes.onboarding,
      onGenerateRoute: AppRouter.onGenerateRoute,
      
    );
  }
}

