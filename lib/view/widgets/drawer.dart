import 'package:dash_school/core/constants/app_colors.dart';
import 'package:dash_school/core/constants/app_images.dart';
import 'package:dash_school/core/constants/constans.dart';
import 'package:dash_school/get_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class DrawerBody extends StatelessWidget {
  const DrawerBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [
        // UserAccountsDrawerHeader(
        //     // decoration: Decoration(  ),

        //     currentAccountPicture: CircleAvatar(
        //       child: SvgPicture.asset(
        //         AppImages.schoolWite,
        //         height: 30,
        //       ),
        //     ),
        //     accountName: const Text(
        //       'انس حسن',
        //     ),
        //     accountEmail: const Text(
        //       "الصف الرابع",
        //     )),

        Container(
          // drawer header
          decoration: const BoxDecoration(
            color: AppColor.kPrimaryColor,
          ),
          // height: 200,
          width: double.infinity,
          child: SafeArea(
            child: Column(
              children: [
                emptySpace,
                Stack(children: [
                  Center(
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        emptySpace,
                        const Text(
                          AppConstants.userName,
                        ),
                        emptySpace,
                        CircleAvatar(
                          radius: 30,
                          backgroundColor:
                              Theme.of(context).scaffoldBackgroundColor,
                          child: Padding(
                            padding: const EdgeInsets.all(
                              5,
                            ),
                            child: SvgPicture.asset(
                              AppImages.schoolWite,
                              height: 50,
                              color: AppColor.kPrimaryColor,
                            ),
                          ),
                        ),
                        emptySpace,
                        const Text('الصف الرابع'),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(
                      horizontal: theDefaultPadding,
                    ),
                    alignment: Alignment.topRight,
                    child: CircleAvatar(
                      backgroundColor:
                          Theme.of(context).scaffoldBackgroundColor,
                      child: IconButton(
                        icon: const Icon(
                          Icons.arrow_back_ios,
                          color: AppColor.kPrimaryColor,
                        ),
                        onPressed: () {
                          Get.back();
                        },
                      ),
                    ),
                  ),
                ]),
                emptySpace,
                emptySpace,
                emptySpace,
                const _PrefInfoRow(),
                emptySpace,
                emptySpace,
                // _DrawerList(),
              ],
            ),
          ),
        ),

        emptySpace,

        _DrawerList(),
      ]),
    );
  }
}

class _PrefInfoRow extends StatelessWidget {
  const _PrefInfoRow();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: const [
        _InfoIcon(theRatingNo: '50', theRatingName: 'الرسوم'),
        _InfoIcon(theRatingNo: '8', theRatingName: 'المستوي'),
        _InfoIcon(theRatingNo: '9', theRatingName: 'التقيم'),
      ],
    );
  }
}

class _InfoIcon extends StatelessWidget {
  final String theRatingNo, theRatingName;
  const _InfoIcon(
      {super.key, required this.theRatingNo, required this.theRatingName});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          child: Text(
            theRatingNo,
            style: TextStyle(
              color: AppColor.kPrimaryColor,
            ),
          ),
        ),
        emptySpace,
        Text(
          theRatingName,
        ),
      ],
    );
  }
}

class _DrawerList extends StatelessWidget {
  const _DrawerList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _DrawerListTile(
          theTitle: 'الرئسية',
          theIcon: Icons.home_rounded,
          ontap: () => Get.toNamed(AppRoute.underDevelopmentScreen),
        ),
        _DrawerListTile(
          theTitle: 'التقويم',
          theIcon: Icons.calendar_month_rounded,
          ontap: () => Get.toNamed(AppRoute.underDevelopmentScreen),
        ),
        _DrawerListTile(
          theTitle: 'ابنائي',
          theIcon: Icons.people_rounded,
          ontap: () => Get.toNamed(AppRoute.underDevelopmentScreen),
        ),
        _DrawerListTile(
          theTitle: 'theTitle',
          theIcon: Icons.money_rounded,
          ontap: () => Get.toNamed(AppRoute.underDevelopmentScreen),
        ),
        _DrawerListTile(
          theTitle: 'جدول الحصص',
          theIcon: Icons.tablet_rounded,
          ontap: () => Get.toNamed(AppRoute.underDevelopmentScreen),
        ),
        _DrawerListTile(
          theTitle: 'الطلبات',
          theIcon: Icons.add_box_rounded,
          ontap: () => Get.toNamed(AppRoute.underDevelopmentScreen),
        ),
        _DrawerListTile(
          theTitle: 'المكتبة',
          theIcon: Icons.book_rounded,
          ontap: () => Get.toNamed(AppRoute.underDevelopmentScreen),
        ),
        _DrawerListTile(
          theTitle: 'الامتحانات',
          theIcon: Icons.book_rounded,
          ontap: () => Get.toNamed(AppRoute.underDevelopmentScreen),
        ),
        _DrawerListTile(
          theTitle: 'الترحيل',
          theIcon: Icons.car_rental_rounded,
          ontap: () => Get.toNamed(AppRoute.underDevelopmentScreen),
        ),
      ],
    );
  }
}

class _DrawerListTile extends StatelessWidget {
  final String theTitle;
  final IconData theIcon;
  final void Function()? ontap;
  const _DrawerListTile(
      {super.key,
      required this.theTitle,
      required this.theIcon,
      required this.ontap});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: ontap,
      title: Text(
        theTitle,
        style: const TextStyle(
          color: AppColor.kPrimaryColor,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      trailing: Icon(
        theIcon,
        size: 25,
        color: AppColor.kPrimaryColor,
      ),
    );
  }
}
