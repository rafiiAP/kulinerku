import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kulinerku/view/statemanagement/splash/splash.dart';

import '../../../../data/contant/color.dart';

class DotindicatorView extends StatelessWidget {
  DotindicatorView({super.key});

  final SplashGetx ctrl = Get.find();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: ctrl.introModel.map((value) {
        return Obx(
          () => AnimatedContainer(
            duration: const Duration(milliseconds: 400),
            width: ctrl.currentIndex.value == value.index ? 35 : 8,
            height: 8.0,
            margin: const EdgeInsets.symmetric(horizontal: 4.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: ctrl.currentIndex.value == value.index
                  ? ColorConfig.mainColor
                  : Colors.grey,
            ),
          ),
        );
      }).toList(),
    );
  }
}
