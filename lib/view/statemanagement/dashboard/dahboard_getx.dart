import 'package:get/get.dart';
import 'package:kulinerku/view/page/home/home.dart';
import 'package:kulinerku/view/page/map/map.dart';
import 'package:kulinerku/view/page/profile/profile.dart';

class DashboardController extends GetxController {
  var nIndex = 0.obs;

  List vaPage = [
    HomePage(),
    const MapPage(),
    const ProfilePage(),
  ];

  onTabTapped(index) {
    nIndex.value = index;
  }
}
