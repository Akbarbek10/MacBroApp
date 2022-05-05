import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:macbro_app/core/theme/app_colors.dart';

class EmptyPage extends StatelessWidget {
  const EmptyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.background,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // SvgPicture.asset(
          //   "assets/svg/ic_empty.svg",
          //   width: 311.w,
          //   height: 311.h,
          // ),
          Image.asset(
            "assets/png/ic_empty.png",
              width: 311.w,
              height: 311.h,
          ),
          SizedBox(height: 18.h),
          Text(
            "Пустая страница",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.black,
                fontSize: 16.sp,
                fontFamily: "Sf_Pro",
                fontWeight: FontWeight.w400),
          ),
          SizedBox(height: 40.h),
        ],
      ),
    );
  }
}
