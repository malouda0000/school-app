import 'package:dash_school/core/constants/app_colors.dart';
import 'package:dash_school/core/constants/app_images.dart';
import 'package:dash_school/core/constants/constans.dart';
import 'package:dash_school/core/themes/my_themes.dart';
import 'package:dash_school/view/screens/home/home_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shared_preferences/shared_preferences.dart';

// SharedPreferences mySharedPrefes = SharedPreferences.getIn
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'مدرسة داش',
      theme: MyThemes.customLightTheme,
      // themeMode: ,
      home: const MainScreen(),
    );
  }
}

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Column(children: const [
            UserAccountsDrawerHeader(
                accountName: Text(
                  'انس حسن',
                ),
                accountEmail: Text(
                  "الصف الرابع",
                ))
          ]),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0,
        leading: Builder(builder: (context) {
          return IconButton(
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            icon: const Icon(
              Icons.menu_rounded,
            ),
            color: AppColor.kPrimaryColor,
          );
        }),
        centerTitle: true,
        title: const Text(
          'مدرسة داش ',
          style: TextStyle(
            color: AppColor.kPrimaryColor,
          ),
        ),
        actions: [
          SvgPicture.asset(
            AppImages.student,
            // color: AppColor.kPrimaryColor,
            height: 40,
            alignment: Alignment.center,
          ),
          emptySpace,
        ],
      ),
      body: const HomeBody(),
    );
  }
}
