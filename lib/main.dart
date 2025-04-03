import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islamy_app/ui/home/home_screen.dart';
import 'package:islamy_app/ui/home/quran/quran_details.dart';
import 'package:islamy_app/ui/onboarding_screen.dart';
import 'package:islamy_app/utils/app_theme.dart';

void main()
{

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: OnboardingScreen.routeName,
      routes: {
        OnboardingScreen.routeName : (context) => OnboardingScreen(),
        HomeScreen.routeName : (context) => HomeScreen(),
        QuranDetailsWidget.routeName : (context) => QuranDetailsWidget(),


      },
      themeMode: ThemeMode.dark,
      theme: AppTheme.darkTheme,
    );
  }
  }

