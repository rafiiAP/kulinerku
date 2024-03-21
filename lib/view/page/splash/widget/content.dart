import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kulinerku/view/statemanagement/splash/splash.dart';

import '../../../../components/widgets/custom_widget.dart';
import '../../../../data/contant/color.dart';
import '../../../../data/models/introduction_model.dart';

class ContentView extends StatelessWidget {
  ContentView({super.key});
  final SplashGetx ctrl = Get.find();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: CarouselSlider.builder(
        itemCount: ctrl.introModel.length,
        itemBuilder: (context, index, realIndex) {
          IntroductionModel introductionModel = ctrl.introModel[index];
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: introductionModel.index == 2 ? 60 : 0,
              ),
              W.aspectRatioImage(
                aspectRatio: 16 / 9,
                image: introductionModel.image!,
              ),
              const SizedBox(
                height: 40,
              ),
              W.textTitle(
                introductionModel.title!,
                // color: ThemeMode.system == ThemeMode.dark
                //     ? ColorConfig.white
                //     : ColorConfig.black,
              ),
              const SizedBox(
                height: 100,
              ),
              introductionModel.index == 2
                  ? W.myElevatedButton(
                      onPressed: () {
                        ctrl.toDashboard();
                      },
                      text: 'Let’s Start!',
                      textColor: ColorConfig.white,
                      fixedSize: const Size(172, 40),
                    )
                  : Container(),
            ],
          );
        },
        carouselController: ctrl.carouselController,
        options: CarouselOptions(
          height: MediaQuery.of(context).size.height,
          enableInfiniteScroll: false,
          viewportFraction: 1.0,
          onPageChanged: (index, reason) {
            ctrl.onChangePage(index);
          },
        ),
      ),
    );
  }
}
