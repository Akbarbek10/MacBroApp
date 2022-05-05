import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:macbro_app/controllers/home_controller.dart';
import 'package:macbro_app/ui/main/widgets/empty_page.dart';


class BasketPage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.5,
        title: Text(
          "Корзина",
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.black,
              fontSize: 20.sp,
              letterSpacing: 0.38.w,
              fontFamily: "Sf_Pro",
              fontWeight: FontWeight.w600),
        ),
      ),
      body: const SafeArea(
        child: EmptyPage(),
      ),
    );
  }
}
