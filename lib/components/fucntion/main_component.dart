import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';

MainComponent get C => MainComponent._internal();

class MainComponent {
  static final MainComponent _instance = MainComponent._internal();
  factory MainComponent() => _instance;
  MainComponent._internal();

  getHeight() {
    return Get.size.height;
  }
}
