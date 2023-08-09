import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:kulinerku/components/widgets/custom_widget.dart';
import 'package:kulinerku/data/contant/color.dart';
import 'package:kulinerku/data/contant/image.dart';
import 'package:kulinerku/view/statemanagement/home/home_getx.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final HomeController ctrl = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 3,
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              pinned: true,
              backgroundColor: ColorConfig.white,
              elevation: 0,
              expandedHeight: 200,
              flexibleSpace: FlexibleSpaceBar(
                background: SafeArea(
                  child: Column(
                    children: [
                      ListTile(
                        title: W.textTitle('Halo! Rafii'),
                        trailing: Image.asset(
                          MyImage.iconNotif,
                          width: 30,
                        ),
                        leading: ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: Image.asset(
                            MyImage.mainIcon,
                            width: 30,
                          ),
                        ),
                      ),
                      Container(
                        height: 50,
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: TextField(
                          decoration: InputDecoration(
                            isDense: true,
                            filled: true,
                            hintText: 'Search here',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide.none),
                            prefixIcon: const Icon(
                              Icons.search,
                              size: 30,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              bottom: PreferredSize(
                preferredSize: const Size.fromHeight(40),
                child: Container(
                  color: ColorConfig.white,
                  padding: const EdgeInsets.only(
                      bottom: 0, left: 16, top: 16, right: 16),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: W.textTitle('What do you want to eat?'),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      ButtonsTabBar(
                        controller: ctrl.tabController,
                        radius: 13,
                        contentPadding:
                            const EdgeInsets.symmetric(horizontal: 20),
                        borderWidth: 2,
                        buttonMargin: const EdgeInsets.only(right: 12),
                        borderColor: ColorConfig.transparent,
                        unselectedBackgroundColor: ColorConfig.white,
                        unselectedBorderColor: ColorConfig.mainColor,
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: <Color>[
                              ColorConfig.secondary,
                              ColorConfig.mainColor,
                            ],
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                          ),
                        ),
                        unselectedLabelStyle:
                            const TextStyle(color: ColorConfig.mainColor),
                        labelStyle: const TextStyle(color: ColorConfig.white),
                        height: 30,
                        tabs: const [
                          Tab(
                            text: 'Italian',
                          ),
                          Tab(
                            text: 'Westeren',
                          ),
                          Tab(
                            text: 'Indonsian',
                          ),
                          Tab(
                            text: 'England',
                          ),
                          Tab(
                            text: 'Tehe',
                          ),
                          Tab(
                            text: 'Pochinki',
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SliverFillRemaining(
              child: TabBarView(
                controller: ctrl.tabController,
                children: const [
                  Center(
                    child: Text(
                      'italian',
                    ),
                  ),
                  Center(child: Text('westeren')),
                  Center(child: Text('indonesia')),
                  Center(child: Text('england')),
                  Center(child: Text('tehe')),
                  Center(child: Text('pochinki')),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
