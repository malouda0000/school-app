import 'package:dash_school/core/constants/app_colors.dart';
import 'package:dash_school/core/constants/constans.dart';
import 'package:dash_school/models/modles/bank_services.dart';
import 'package:dash_school/view/widgets/big_title_builder.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class DashServices extends StatelessWidget {
  // final bool isUnderDev;
  const DashServices({
    super.key,

    // required this.isUnderDev,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: theDefaultPadding,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const BigTitleBuilder(
            theTitle: 'خدمات المدرسة',
            textColor: AppColor.kPrimaryColor,
          ),
          emptySpace,
          GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: _DashSchoolsServices.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                // crossAxisCount: 3,

                crossAxisCount: 3,
                // childAspectRatio: .7,
                crossAxisSpacing: theDefaultPadding,
                mainAxisSpacing: theDefaultPadding,
              ),
              itemBuilder: (context, index) {
                return DashServicesCard(
                  index: index,
                  // isUnderDev: ,
                );
              }),
        ],
      ),
    );
  }
}

class DashServicesCard extends StatelessWidget {
  final int index;
  // final bool isUnderDev;
  const DashServicesCard({
    Key? key,
    required this.index,
    // required this.isUnderDev,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _DashSchoolsServices[index].isUnderDev
        ? GestureDetector(
            onTap: () {
              // Get.toNamed(AppRoute.underDevelopmentScreen);

              GetSnackBar(
                title: 'comming Soon',
              );
            },
            child: ClipRect(
              child: Banner(
                location: BannerLocation.topEnd,
                child: TheDashServiceCard(index: index),
                message: "soon",
                // color: AppColor.kColorTwo,
                // color: AppColor.kPrimaryColor,
                color: Colors.red,
                // textStyle: Theme.of(context).textTheme.bodySmall!,

                // layoutDirection: TextDirection.rtl,
              ),
            ),
          )
        : TheDashServiceCard(index: index);
  }
}

class TheDashServiceCard extends StatelessWidget {
  const TheDashServiceCard({
    Key? key,
    required this.index,
  }) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColor.kPrimaryColor.withOpacity(.3),
          // color: Theme.of(context).chipTheme.backgroundColor,
          borderRadius: BorderRadius.circular(
            theSmallPadding,
          )),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            _DashSchoolsServices[index].theIcon,
            size: 40,
            color: AppColor.kPrimaryColor,
          ),
          // emptySpace,
          // emptySpace,
          Text(
            _DashSchoolsServices[index].title,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

final List<BankServices> _DashSchoolsServices = [
  BankServices(
    title: 'الابناء',
    theIcon: Icons.people_rounded,
    isUnderDev: false,
  ),
  BankServices(
    title: 'التقويم',
    theIcon: Icons.calendar_month_rounded,
    isUnderDev: false,
  ),
  BankServices(
    title: 'جدول الحصص',
    theIcon: Icons.table_chart_rounded,
    isUnderDev: false,
  ),
  BankServices(
    title: 'التسجيل',
    theIcon: Icons.app_registration_rounded,
    isUnderDev: true,
  ),
  BankServices(
    title: 'المكتبة',
    theIcon: Icons.book,
    isUnderDev: false,
  ),

  ////////////////////
  ///
  ///
  ///
  BankServices(
    title: 'الطلبات',
    theIcon: Icons.add_rounded,
    isUnderDev: true,
  ),
  BankServices(
    title: 'الترحيل',
    theIcon: Icons.bus_alert_rounded,
    isUnderDev: false,
  ),
  BankServices(
    title: 'الامتحنات',
    theIcon: Icons.book_online_rounded,
    isUnderDev: false,
  ),

  BankServices(
    title: 'التنبيهات',
    theIcon: Icons.notifications_rounded,
    isUnderDev: true,
  ),
  BankServices(
    title: 'الاخبار',
    theIcon: Icons.newspaper_rounded,
    isUnderDev: false,
  ),
  BankServices(
    title: 'الحضور',
    theIcon: Icons.door_sliding_rounded,
    isUnderDev: true,
  ),
  BankServices(
    title: 'االصفحة الشخصية',
    theIcon: Icons.person_rounded,
    isUnderDev: false,
  ),
];
