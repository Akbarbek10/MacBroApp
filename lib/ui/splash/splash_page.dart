import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:macbro_app/controllers/splash_controller.dart';

class SplashPage extends GetView<SplashController> {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: GetBuilder<SplashController>(
          builder: (controller) => Scaffold(
            body: Center(
              child: SvgPicture.asset("assets/svg/macbro_logo.svg"),
            ),
          ),
        ),
      ),
    );
  }
}
