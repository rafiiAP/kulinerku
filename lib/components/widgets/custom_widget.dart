import 'package:flutter/material.dart';
import 'package:get/get.dart';

MainWidgets get W => MainWidgets._internal();

class MainWidgets {
  static final MainWidgets _instance = MainWidgets._internal();
  factory MainWidgets() => _instance;
  MainWidgets._internal();

  //----------------------------TEXT-----------------------------
  textBody(
    String text, {
    FontWeight? fontWeight,
    Color? color,
    int? maxLines,
    TextAlign? textAlign,
    TextOverflow? overflow,
  }) {
    return Text(
      text,
      style: Get.textTheme.bodyLarge!.copyWith(
        fontWeight: fontWeight,
        color: color,
      ),
      maxLines: maxLines,
      textAlign: textAlign,
      overflow: overflow,
    );
  }

  textTitle(
    String text, {
    Color? color,
    int? maxLines,
    TextAlign? textAlign,
    TextOverflow? overflow,
  }) {
    return Text(
      text,
      style: Get.textTheme.titleLarge!
          .copyWith(color: color, fontWeight: FontWeight.bold),
      maxLines: maxLines,
      textAlign: textAlign,
      overflow: overflow,
    );
  }

  //------------------------BUTTON-------------------------------
  myElevatedButton({
    required void Function()? onPressed,
    String? text,
    Color? textColor,
    Size? fixedSize,
  }) {
    return ElevatedButton(
      onPressed: onPressed,
      child: W.textBody(
        text!,
        color: textColor,
      ),
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        fixedSize: fixedSize,
      ),
    );
  }

  myTextButton({
    required void Function()? onPressed,
    String? text,
    Color? textColor,
  }) {
    return TextButton(
      onPressed: onPressed,
      child: W.textBody(
        text!,
        color: textColor,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  //------------------------IMAGE--------------------------------
  aspectRatioImage({required double aspectRatio, String? image}) {
    return AspectRatio(aspectRatio: aspectRatio, child: Image.asset(image!));
  }
}
