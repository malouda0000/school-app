import 'package:dash_school/controllers/custom_onbording_controller.dart';
import 'package:dash_school/core/constants/app_colors.dart';
import 'package:dash_school/view/screens/onbording/widgets/onbording_data.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SlidingController extends StatelessWidget {
  const SlidingController({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: const [
        // SkipButton(),
        SlidingDots(),
        // NextButton(),
      ],
    );
  }
}

class SlidingDots extends StatelessWidget {
  const SlidingDots({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnBordingControllerImp>(
      builder: (controller) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ...List.generate(
              dashONbordingList.length,
              (index) {
                return AnimatedContainer(
                  duration: const Duration(
                    milliseconds: 900,
                  ),
                  width: controller.currentPage == index ? 35 : 12,
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
