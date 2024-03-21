import 'package:flutter/material.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';
import 'package:get/get.dart';

import 'package:kulinerku/data/contant/color.dart';
import 'package:kulinerku/view/statemanagement/dashboard/dahboard_getx.dart';

class DashboardPage extends StatelessWidget {
  DashboardPage({super.key});

  final DashboardController ctrl = Get.put(DashboardController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      resizeToAvoidBottomInset: true,
      body: Obx(() => ctrl.vaPage[ctrl.nIndex.value]),
      bottomNavigationBar: Obx(
        () => Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5), // Warna shadow
                spreadRadius: 2, // Radius penyebaran
                blurRadius: 8, // Radius blur
                offset:
                    const Offset(0, 5), // Posisi shadow (horizontal, vertical)
              ),
            ],
          ),
          margin: const EdgeInsets.all(16),
          child: SnakeNavigationBar.gradient(
            // behaviour: snakeBarStyle,
            // snakeShape: snakeShape,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),

            snakeViewGradient: const LinearGradient(
              colors: [ColorConfig.white, ColorConfig.white],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
            ),
            selectedItemGradient: const LinearGradient(
              colors: [ColorConfig.secondary, ColorConfig.mainColor],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
            ),
            unselectedItemGradient: const LinearGradient(
              colors: [ColorConfig.grey, ColorConfig.grey],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
            ),

            currentIndex: ctrl.nIndex.value,
            onTap: (index) => ctrl.onTabTapped(index),
            items: const [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  size: 30,
                ),
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.location_on,
                  size: 30,
                ),
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.perm_identity,
                  size: 30,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
