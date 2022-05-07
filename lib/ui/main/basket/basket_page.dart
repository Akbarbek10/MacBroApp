import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:macbro_app/controllers/home_controller.dart';
import 'package:macbro_app/ui/main/widgets/empty_page.dart';
import 'package:macbro_app/ui/main/widgets/my_app_bar.dart';


class BasketPage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar("Корзина"),
      body: const SafeArea(
        child: EmptyPage(),
      ),
    );
  }
}
