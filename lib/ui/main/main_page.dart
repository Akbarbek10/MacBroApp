import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:macbro_app/controllers/bottom_menu_controller.dart';
import 'package:macbro_app/ui/main/favourite/favourite_page.dart';
import 'package:macbro_app/ui/main/home/home_page.dart';
import 'package:macbro_app/ui/main/profile/profile_page.dart';
import 'basket/basket_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<BottomMenuController>(
      builder: ((controller) => Scaffold(
            backgroundColor: Colors.white,
            body: IndexedStack(
              index: controller.bottomMenu.index,
              children: [
                HomePage(),
                BasketPage(),
                FavouritePage(),
              ],
            ),
            bottomNavigationBar: BottomNavigationBar(
              onTap: (position) {
                if (position == 3) {
                  Get.to(ProfilePage(),transition: Transition.rightToLeft,duration: const Duration(milliseconds: 150));
                } else {
                  controller.setMenu(BottomMenu.values[position]);
                }
              },
              selectedFontSize: 13.sp,
              unselectedFontSize: 13.sp,
              currentIndex: controller.bottomMenu.index,
              unselectedItemColor: const Color(0xFFABABAB),
              type: BottomNavigationBarType.fixed,
              selectedItemColor: const Color(0xFF007AFF),
              items: [
                _bottomNavigationBarItem(icon: "ic_home", label: "Главная"),
                _bottomNavigationBarItem(icon: "ic_basket", label: "Корзина"),
                _bottomNavigationBarItem(
                    icon: "ic_favourite", label: "Избранные"),
                _bottomNavigationBarItem(icon: "ic_profile", label: "Профиль"),
              ],
            ),
          )),
    );
  }

  _bottomNavigationBarItem({
    required String icon,
    required String label,
  }) {
    return BottomNavigationBarItem(
      label: "$label",
      icon: Padding(
        padding: const EdgeInsets.all(4.0),
        child: SvgPicture.asset(
          'assets/svg/$icon.svg',
          color: const Color(0xFFABABAB),
        ),
      ),
      activeIcon: Padding(
        padding: const EdgeInsets.all(4.0),
        child: SvgPicture.asset(
          'assets/svg/$icon.svg',
          color: const Color(0xFF007AFF),
        ),
      ),
    );
  }
}
