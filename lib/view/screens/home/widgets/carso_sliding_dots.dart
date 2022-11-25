import 'package:dash_school/controllers/home_controller.dart';
import 'package:dash_school/core/constants/app_colors.dart';
import 'package:dash_school/view/screens/home/widgets/coursol_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CarouslSlidingDots extends StatelessWidget {
  const CarouslSlidingDots({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(HomeControllerImp());
    return GetBuilder<HomeControllerImp>(
      builder: (homeControllerImp) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ...List.generate(
              dashCards.length,
              (index) {
                return AnimatedContainer(
                  duration: const Duration(
                    milliseconds: 900,
                  ),
                  width: homeControllerImp.carousIndex == index ? 20 : 6,
                  height: 6,
                  margin: const EdgeInsets.all(
                    // theDefaultPadding,
                    2,
                  ),
                  decoration: BoxDecoration(
                      color: AppColor.kPrimaryColor,
                      // shape: BoxShape.circle,
                      borderRadius: BorderRadius.circular(15)),
                );
              },
            ),
          ],
        );
      },
    );
  }
}
