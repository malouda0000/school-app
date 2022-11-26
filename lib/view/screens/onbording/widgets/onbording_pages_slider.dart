import 'package:dash_school/controllers/custom_onbording_controller.dart';
import 'package:dash_school/view/screens/onbording/widgets/onbording_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class OnBordingPageSlider extends GetView<OnBordingControllerImp> {
  const OnBordingPageSlider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: controller.pageController,
      onPageChanged: (value) {
        controller.onPageChanged(value);
      },
      itemCount: dashONbordingList.length,
      itemBuilder: (context, index) {
        return Container(
          width: Get.width,
          alignment: AlignmentDirectional.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(
                dashONbordingList[index].imagePath,
                width: MediaQuery.of(context).size.width * .9,
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.only(top: 20),
                child: Text(
                  textAlign: TextAlign.center,
                  dashONbordingList[index].title,
                  style: const TextStyle(
                    // color: Colors.white,
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(
                  top: 15,
                  left: 20,
                  right: 20,
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                ),
                child: Text(
                  dashONbordingList[index].discription,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 14,
                    height: 1.5,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
