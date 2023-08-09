import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:kulinerku/view/page/splash/widget/btn_skip_view.dart';
import 'package:kulinerku/view/page/splash/widget/content.dart';
import 'package:kulinerku/view/page/splash/widget/dotindicator_view.dart';
import 'package:kulinerku/view/statemanagement/splash/splash.dart';

class SplashPage extends StatelessWidget {
  SplashPage({super.key});

  final ctrl = Get.put(SplashGetx());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(bottom: 50.0),
        child: Column(
          children: [
            ContentView(),
            Obx(
              () => ctrl.currentIndex.value != 2
                  ? BtnSkipView()
                  : Container(
                      height: 58,
                    ),
            ),
            DotindicatorView(),
          ],
        ),
      ),
    );
  }
}
