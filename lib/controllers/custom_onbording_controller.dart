import 'package:dash_school/get_pages.dart';
import 'package:dash_school/view/screens/onbording/widgets/onbording_data.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class CustomOnBordingController extends GetxController {
  next();

  skip();

  onPageChanged(int index);
}

class OnBordingControllerImp extends CustomOnBordingController {
  late PageController pageController;
  int currentPage = 0;

  @override
  next() {
    currentPage++;
    if (currentPage >= dashONbordingList.length) {
      Get.offAllNamed(
        AppRoute.mainScreen,
      );
    } else {
      pageController.animateToPage(currentPage,
          duration: const Duration(milliseconds: 900), curve: Curves.easeInOut);
    }
  }

  @override
  skip() {
    Get.offAllNamed(
      AppRoute.mainScreen,
    );

    update();
  }

  @override
  onPageChanged(int index) {
    currentPage = index;

    update();
  }

  @override
  void onInit() {
    pageController = PageController();
    super.onInit();
  }
}
