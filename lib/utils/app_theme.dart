

import 'package:flutter/material.dart';
import 'package:islamy_app/utils/app_colors.dart';

class AppTheme{

  static final ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: AppColors.colorTransparent ,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: AppColors.whiteColor,
      unselectedItemColor: AppColors.blackColor,
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.blackbgColor,
        elevation: 0,
      centerTitle: true,
      iconTheme: IconThemeData(
        color: AppColors.primaryColor
    )
    ),
    textTheme: TextTheme(
      headlineMedium: TextStyle(
        fontSize: 20 ,
        fontWeight: FontWeight.bold,
        color: AppColors.whiteColor,
      ),
      headlineSmall: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.bold,
        color: AppColors.whiteColor,
      ),
      bodyMedium: TextStyle(
        fontSize: 20 ,
        fontWeight: FontWeight.bold,
        color: AppColors.blackColor,
      ),
      bodySmall: TextStyle(
        fontSize: 14 ,
        fontWeight: FontWeight.bold,
        color: AppColors.blackColor,
      ),
    )

  );
}
