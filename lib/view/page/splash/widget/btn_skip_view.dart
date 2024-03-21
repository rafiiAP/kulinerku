import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kulinerku/view/statemanagement/splash/splash.dart';

import '../../../../components/widgets/custom_widget.dart';
import '../../../../data/contant/color.dart';

class BtnSkipView extends StatelessWidget {
  BtnSkipView({super.key});

  final SplashGetx ctrl = Get.find();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: W.myTextButton(
        onPressed: () => ctrl.toLastPage(),
        text: 'SKIP',
        textColor: ColorConfig.mainColor,
      ),
    );
  }
}
