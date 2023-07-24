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
      style: Get.textTheme.titleLarge!.copyWith(
        color: color,
      ),
      maxLines: maxLines,
      textAlign: textAlign,
      overflow: overflow,
    );
  }
}
