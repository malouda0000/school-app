import 'dart:math';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:dash_school/controllers/home_controller.dart';
import 'package:dash_school/core/constants/app_colors.dart';
import 'package:dash_school/core/constants/app_images.dart';
import 'package:dash_school/core/constants/constans.dart';
import 'package:dash_school/get_pages.dart';
import 'package:dash_school/models/data%20source/user_cards.dart';
import 'package:dash_school/view/widgets/big_title_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import 'carso_sliding_dots.dart';

class CarsoulSlider extends StatelessWidget {
  const CarsoulSlider({super.key});

  @override
  Widget build(BuildContext context) {
    HomeControllerImp homeControllerImp = Get.put(HomeControllerImp());
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        CarouselSlider(
          items: dashCards,
          options: CarouselOptions(
            // height: 400,
            height: 220,

            // disableCenter: false,
            // padEnds: false,
            onPageChanged: (index, reason) {
              homeControllerImp.carouselSliderChanged(index);
            },

            // aspectRatio: 16 / 9,
            viewportFraction: 0.95,
            // viewportFraction: 0.8,
            initialPage: 0,
            enableInfiniteScroll: true,
            reverse: false,
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 5),
            autoPlayAnimationDuration: const Duration(milliseconds: 1500),
            autoPlayCurve: Curves.ease,
            // enlargeCenterPage: true,
            // onPageChanged: callbackFunction,
            scrollDirection: Axis.horizontal,
          ),
        ),
        emptySpace,
        // emptySpace,
        const CarouslSlidingDots(),
      ],
    );
  }
}

List<Widget> dashCards = [
  DashCard(
    // first card
    bankName: CardOne.bankName,
    userEmail: CardOne.userEmail,
    cashNo: CardOne.cashNo,
    cardNo: CardOne.userCardNo,

    onTap: () {
      // Get.toNamed(AppRoute.underDevelopmentScreen);
      // Get.to(UnderD)
    },
  ),
  // emptySpace,
  DashCard(
    // second card
    bankName: CardTwo.bankName,
    userEmail: CardTwo.userEmail,
    cashNo: CardTwo.cashNo,
    cardNo: CardTwo.userCardNo,

    onTap: () {
      Get.toNamed(AppRoute.underDevelopmentScreen);
    },
  ),
  // emptySpace,
  DashCard(
    // third card
    bankName: CardThree.bankName,
    userEmail: CardThree.userEmail,
    cashNo: CardThree.cashNo,
    cardNo: CardThree.userCardNo,

    onTap: () {
      Get.toNamed(AppRoute.underDevelopmentScreen);
    },
  ),
  DashCard(
    // first card
    bankName: CardFour.bankName,
    userEmail: CardFour.userEmail,
    cashNo: CardFour.cashNo,
    cardNo: CardFour.userCardNo,

    onTap: () {
      Get.toNamed(AppRoute.underDevelopmentScreen);
    },
  ),
  // emptySpace,
  DashCard(
    // second card
    bankName: CardFive.bankName,
    userEmail: CardFive.userEmail,
    cashNo: CardFive.cashNo,
    cardNo: CardFive.userCardNo,

    onTap: () {
      Get.toNamed(AppRoute.underDevelopmentScreen);
    },
  ),
  // emptySpace,
  DashCard(
    // third card
    bankName: CardSix.bankName,
    userEmail: CardSix.userEmail,
    cashNo: CardSix.cashNo,
    cardNo: CardSix.userCardNo,

    onTap: () {
      // Get.toNamed(AppRoute.underDevelopmentScreen);
    },
  ),
];

List<String> _dashClassRoomsImages = [
  AppImages.classroom1,
  AppImages.classroom2,
  AppImages.classroom3,
  AppImages.classroom4,
  AppImages.classstudents1,
  AppImages.classstudents2,
  AppImages.classstudents3,
  AppImages.classstudents4,
  // AppImages.classstudents5,
  AppImages.classstudents6,
];

class DashCard extends StatelessWidget {
  final String bankName, userEmail, cashNo, cardNo;
  final void Function()? onTap;
  const DashCard(
      {super.key,
      required this.bankName,
      required this.userEmail,
      required this.cashNo,
      required this.cardNo,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        clipBehavior: Clip.hardEdge,
        width: Get.width - (theDefaultPadding * 2),
        height: 220,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            theSmallPadding,
          ),
          image: DecorationImage(
            image: AssetImage(
              _dashClassRoomsImages[Random().nextInt(
                _dashClassRoomsImages.length,
              )],
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          padding: const EdgeInsets.all(
            theDefaultPadding,
          ),
          color: AppColor.kPrimaryColor.withOpacity(.5),
          child: Row(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SvgPicture.asset(
                    AppImages.bookWite,
                    height: 70,
                  )
                ],
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    // Container(
                    //   decoration: BoxDecoration(
                    //     color: Colors.white,
                    //   ),
                    // ),
                    const BigTitleBuilder(
                      // theTitle: bankName.toUpperCase(),
                      theTitle: 'اسم المدرسة',
                      textColor: Colors.white,
                    ),
                    // emptySpace,
                    const Text(
                      // userEmail,

                      "معلومات اضافية",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: const [
                        Text(
                          // '$cashNo : ',
                          "اسم المدرسة ",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      // AppConstants.userCardNo,
                      cardNo,
                      style: const TextStyle(
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
