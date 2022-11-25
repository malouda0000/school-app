import 'package:dash_school/core/constants/app_colors.dart';
import 'package:dash_school/main.dart';
import 'package:dash_school/view/screens/onbording/widgets/dash_sliding.dart';
import 'package:dash_school/view/screens/onbording/widgets/dash_slidling_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controllers/custom_onbording_controller.dart';

late PageController pageController;

class DashOnbording extends StatelessWidget {
  const DashOnbording({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(OnBordingControllerImp());
    return Scaffold(
      // backgroundColor: AppColor.kPrimaryColor,
      body: Stack(
        children: [
          Column(
            children: const [
              Expanded(
                flex: 40,
                child: OnBordingPageSlider(),
              ),
              Expanded(
                // flex: 1,
                child: SlidingController(),
              )
            ],
          ),
          SafeArea(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                _SkipButton(),
                _NextButton(),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class _NextButton extends GetView<OnBordingControllerImp> {
  const _NextButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    OnBordingControllerImp onBordingControllerImp =
        Get.put(OnBordingControllerImp());

    return Container(
      height: 40,
      margin: const EdgeInsets.only(top: 20),
      clipBehavior: Clip.hardEdge,
      decoration: const BoxDecoration(
        color: AppColor.kPrimaryColor,
        shape: BoxShape.circle,
        // borderRadius: BorderRadius.circular(
        //   500,
        // ),
      ),
      child: MaterialButton(
        elevation: 0,
        color: AppColor.kPrimaryColor,
        child: Icon(
          Icons.arrow_forward_ios_rounded,
          color: Theme.of(context).scaffoldBackgroundColor,
        ),
        onPressed: () async {
          onBordingControllerImp.next();
        },
      ),
    );
  }
}

class _SkipButton extends GetView<OnBordingControllerImp> {
  const _SkipButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      clipBehavior: Clip.hardEdge,
      margin: const EdgeInsets.only(top: 20),
      decoration: BoxDecoration(
        // color: AppColor.kPrimaryColor,
        borderRadius: BorderRadius.circular(
          500,
        ),
      ),
      child: MaterialButton(
        elevation: 0,
        // color: AppColor.kPrimaryColor,
        child: Text(
          // AppLocal.skip.tr,
          'تخطي',
          style: Theme.of(context).textTheme.bodyText1!.copyWith(
                color: AppColor.kPrimaryColor,
              ),
        ),
        onPressed: () {
          Get.offAll(const MainScreen());
        },
      ),
    );
  }
}
