import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:trip_trek/entities/routes/routes.dart';
import 'package:trip_trek/entities/routes/router.dart';

import 'firebase_options.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = await SharedPreferences.getInstance();
  final showOnboarding = prefs.getBool('showOnboarding') ?? true;
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);
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

