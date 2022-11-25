import 'package:dash_school/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

class MyThemes {
  static ThemeData customLightTheme = ThemeData.light().copyWith(
    // colorScheme: ColorScheme.light().copyWith(
    //   // shadow: AppColor.kPrimaryColor,

    // ),
    // splashColor: AppColor.kPrimaryColor,
    chipTheme: const ChipThemeData(
        // backgroundColor: AppColor.kColorTwo.withOpacity(.3),
        ),

    // shadowColor: AppColor.kTextColor.withOpacity(.3),
    primaryColor: AppColor.kPrimaryColor,
    // iconTheme: const IconThemeData(color: AppColor.kTextColor),
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: const AppBarTheme(
      // backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      elevation: 0,
      // iconTheme: IconThemeData(color: AppColor.kTextColor),
    ),
    // bottomAppBarColor: AppColor.theMainLightColor,
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        // backgroundColor: AppColor.theMainLightColor,
        ),
    textTheme: const TextTheme(
      bodyText1: TextStyle(
        // color: AppColor.kTextColor,
        fontFamily: 'Cairo',
      ),
      bodyText2: TextStyle(
        // color: AppColor.kTextColor,
        fontFamily: 'Cairo',
      ),
      headline6: TextStyle(
        // color: AppColor.kTextColor,
        fontSize: 20,
        fontWeight: FontWeight.bold,
        fontFamily: 'Cairo',
      ),
    ),
  );

  ////////////////////////////////////////////
  ////
  ////
  //////////////////////////////////////

  static ThemeData customDarkTheme = ThemeData.dark().copyWith(
    chipTheme: ChipThemeData(
      backgroundColor: AppColor.kPrimaryColor.withOpacity(.25),
    ),
    shadowColor: Colors.black.withOpacity(.7),
    primaryColor: AppColor.kPrimaryColor,
    iconTheme: const IconThemeData(
        // color: AppColor.theMainLightColor,
        ),
    appBarTheme: const AppBarTheme(
      // backgroundColor: AppColor.theMainLightColor,
      // backgroundColor: AppColor.kPrimaryColor,
      elevation: 0,
      iconTheme: IconThemeData(
          // color: AppColor.theMainLightColor,
          ),
    ),

    // shadowColor: Colors.grey[400]!.withOpacity(.5),
    textTheme: const TextTheme(
      bodyText1: TextStyle(
        // color: AppColor.theMainLightColor,
        fontFamily: 'Cairo',
      ),
      bodyText2: TextStyle(
        // color: AppColor.theMainLightColor,
        fontFamily: 'Cairo',
      ),
      headline6: TextStyle(
        // color: AppColor.theMainLightColor,
        fontSize: 20,
        fontWeight: FontWeight.bold,
        fontFamily: 'Cairo',
      ),
    ),
  );
}
