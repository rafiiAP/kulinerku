import 'package:carousel_slider/carousel_controller.dart';
import 'package:get/get.dart';
import 'package:kulinerku/view/page/dashboard/dashboard.dart';

import '../../../data/models/introduction_model.dart';

class SplashGetx extends GetxController {
  var currentIndex = 0.obs;
  CarouselController carouselController = CarouselController();

  final List<IntroductionModel> introModel = [
    IntroductionModel(
        image: "assets/images/splash1.png",
        title: "Find restaurant near you",
        index: 0),
    IntroductionModel(
        image: "assets/images/splash2.png",
        title: "Give quality reviews",
        index: 1),
    IntroductionModel(
        image: "assets/images/splash3.png",
        title: "Be an influencer!",
        index: 2),
  ];

  toLastPage() {
    carouselController.animateToPage(2);
  }

  onChangePage(index) {
    currentIndex.value = index;
  }

  toDashboard() {
    Get.offAll(DashboardPage());
  }
}
