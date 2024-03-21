import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController
    with GetSingleTickerProviderStateMixin {
  late TabController tabController;
  var cName = 'rafi'.obs;
  var vaName = ['Rafii', 'Ananda'].obs;

  @override
  void onInit() {
    super.onInit();
    vaName.clear();
    vaName.add('raff');
    cName.value = vaName.first;
    tabController = TabController(length: 6, vsync: this);
  }

  @override
  void onClose() {
    tabController.dispose();
    super.onClose();
  }
}
