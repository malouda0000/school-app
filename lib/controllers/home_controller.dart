import 'package:get/get.dart';

abstract class HomeController extends GetxController {
  carouselSliderChanged(index);
}

class HomeControllerImp extends HomeController {
  int carousIndex = 0;

  @override
  carouselSliderChanged(index) {
    carousIndex = index;

    update();
  }
}
