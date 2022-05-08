import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:macbro_app/controllers/home_controller.dart';
import 'package:macbro_app/core/theme/app_colors.dart';
import 'package:macbro_app/core/theme/app_utils.dart';
import 'package:macbro_app/ui/main/home/builders/main_category_builder.dart';
import 'package:macbro_app/ui/main/home/builders/product_section_builder.dart';
import 'package:macbro_app/ui/main/home/builders/banner_slider_builder.dart';


class HomePage extends GetView<HomeController> {


  final _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.5,
        title: SizedBox(
          width: 307.w,
          height: 44.h,
          child: TextFormField(
            controller: _searchController,
            decoration: InputDecoration(
              prefixIcon: Padding(
                padding:  EdgeInsets.symmetric(vertical: 11.h,horizontal: 11.w),
                child: SvgPicture.asset("assets/svg/ic_search.svg"),
              ),
              hintText: 'Поиск',
              hintStyle: const TextStyle(
                fontFamily: AppUtils.kFontFamily,
                fontWeight: FontWeight.w400,
                fontSize: 16,
              ),
              fillColor: const Color(0xFFF9F9FD),
              filled: true,
              contentPadding: EdgeInsets.zero,
              border: InputBorder.none,
              focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(8.r)),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(8.r),
              ),
            ),
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset("assets/svg/ic_bell.svg")),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 16.h,
              ),
              const SliderWidget(),
              SizedBox(
                height: 30.h,
              ),
              const ProductSectionBuilder(),
              SizedBox(
                height: 10.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Категории",
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: AppUtils.kFontFamily,
                          fontWeight: FontWeight.w700,
                          fontSize: 22.sp,
                          letterSpacing: 0.35.w),
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    const MainCategoryBuilder(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
