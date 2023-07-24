import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:introduction_screen/introduction_screen.dart';
import 'package:kulinerku/components/fucntion/main_component.dart';
import 'package:kulinerku/components/widgets/custom_widget.dart';
import 'package:kulinerku/data/contant/color.dart';
import 'package:kulinerku/view/statemanagement/splash/splash.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    var ctrl = Get.put(SplashGetx());
    return Scaffold(
      body: Stack(
        children: [
          Obx(
            () => IntroductionScreen(
              controlsMargin: const EdgeInsets.only(
                bottom: 30,
              ),
              bodyPadding: EdgeInsets.only(top: C.getHeight() * 0.38),
              showNextButton: false,
              showDoneButton: false,
              dotsDecorator: DotsDecorator(
                size: const Size.square(7.0),
                activeSize: const Size(35.0, 7.0),
                activeColor: ColorConfig.mainColor,
                color: Colors.black26,
                spacing: const EdgeInsets.symmetric(horizontal: 3.0),
                activeShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.0),
                ),
              ),
              onChange: (value) {
                ctrl.pageIndex.value = value;
              },
              pages: [
                PageViewModel(
                  title: "Find restaurant near you",
                  body: "",
                  image: Image.asset(
                    "assets/images/splash1.png",
                  ),
                ),
                PageViewModel(
                  title: "Page 2",
                  body: "Description of Page 2",
                  image: Image.asset("assets/images/splash2.png"),
                ),
                PageViewModel(
                  title: "Page 3",
                  body: "Description of Page 3",
                  image: Image.asset("assets/images/splash3.png"),
                ),
              ],
            ),
          ),
          Obx(
            () => Visibility(
              visible: ctrl.pageIndex.value != 2,
              child: Positioned(
                top: C.getHeight() * 0.81111,
                right: 0,
                left: 0,
                bottom: 0,
                child: TextButton(
                  onPressed: () {},
                  child: W.textBody(
                    'SKIP',
                    color: ColorConfig.mainColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
