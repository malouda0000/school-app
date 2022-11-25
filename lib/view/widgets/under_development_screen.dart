import 'package:dash_school/core/constants/app_colors.dart';
import 'package:dash_school/core/constants/constans.dart';
import 'package:dash_school/view/widgets/bubles_background.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UnderDevelopment extends StatelessWidget {
  const UnderDevelopment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const BublesBackground(),
          Center(
            child: Card(
              // semanticContainer: false,
              elevation: 20,
              child: Padding(
                padding: const EdgeInsets.all(theDefaultPadding),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  // shrinkWrap: true,
                  // mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.developer_mode_rounded,
                      color: AppColor.kPrimaryColor,
                      size: Get.width * .5,
                    ),
                    emptySpace,
                    emptySpace,
                    Text(
                      // AppLocal.thisPageIsUnderDevelopment.tr,

                      'this featur is \n under Development',
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          color: AppColor.kPrimaryColor,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
