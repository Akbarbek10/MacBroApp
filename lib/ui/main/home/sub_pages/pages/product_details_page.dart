import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:macbro_app/core/theme/app_colors.dart';
import 'package:macbro_app/core/theme/app_utils.dart';
import 'package:macbro_app/ui/main/home/sub_pages/pages/widgets/color_selector_box.dart';
import 'package:macbro_app/ui/main/home/sub_pages/pages/widgets/selector_box.dart';

class ProductDetailsPage extends StatelessWidget {
  const ProductDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              Container(
                height: 249.h,
                color: Colors.black,
              ),
              SizedBox(height: 24.h),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 16.w),
                child: Column(
                  children: [
                    Visibility(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Цвет",
                            style: TextStyle(
                                overflow: TextOverflow.ellipsis,
                                color: Colors.black,
                                fontSize: 20.sp,
                                fontFamily: AppUtils.kFontFamily,
                                letterSpacing: 0.38.w,
                                fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            height: 16.h,
                          ),
                          StaggeredGridView.countBuilder(
                            scrollDirection: Axis.vertical,
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: 5,
                            crossAxisCount: 2,
                            crossAxisSpacing: 12.w,
                            mainAxisSpacing: 12.h,
                            itemBuilder: (context, index) {
                              return const ColorSelectorBoxWidget();
                            },
                            staggeredTileBuilder: (index) =>
                                const StaggeredTile.fit(1),
                          ),
                        ],
                      ),
                    ),
                    Visibility(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 16.h,
                          ),
                          Text(
                            "Ёмкость",
                            style: TextStyle(
                                overflow: TextOverflow.ellipsis,
                                color: Colors.black,
                                fontSize: 20.sp,
                                fontFamily: AppUtils.kFontFamily,
                                letterSpacing: 0.38.w,
                                fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            height: 16.h,
                          ),
                          StaggeredGridView.countBuilder(
                            scrollDirection: Axis.vertical,
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: 5,
                            crossAxisCount: 2,
                            crossAxisSpacing: 12.w,
                            mainAxisSpacing: 12.h,
                            itemBuilder: (context, index) {
                              return const SelectorBoxWidget();
                            },
                            staggeredTileBuilder: (index) =>
                            const StaggeredTile.fit(1),
                          ),
                        ],
                      ),
                    ),
                    Visibility(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 16.h,
                          ),
                          Text(
                            "Sim",
                            style: TextStyle(
                                overflow: TextOverflow.ellipsis,
                                color: Colors.black,
                                fontSize: 20.sp,
                                fontFamily: AppUtils.kFontFamily,
                                letterSpacing: 0.38.w,
                                fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            height: 16.h,
                          ),
                          StaggeredGridView.countBuilder(
                            scrollDirection: Axis.vertical,
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: 5,
                            crossAxisCount: 2,
                            crossAxisSpacing: 12.w,
                            mainAxisSpacing: 12.h,
                            itemBuilder: (context, index) {
                              return const SelectorBoxWidget();
                            },
                            staggeredTileBuilder: (index) =>
                            const StaggeredTile.fit(1),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
