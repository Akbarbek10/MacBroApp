import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:macbro_app/network/models/ResponseBanner.dart';

class SliderWidget extends StatelessWidget {
  final MyBanner banner;

  const SliderWidget({
    Key? key,
    required this.banner,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 18.w, vertical: 22.h),
      width: 343.w,
      height: 180.h,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage("${banner.image}"),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(8.r),
        color: Color(0xFFFFFFFF),
      ),
      child: Row(
        children: [
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "${banner.title}",
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: "Sf_Pro",
                      fontSize: 28.sp,
                      fontWeight: FontWeight.w700,
                      letterSpacing: 0.34.w),
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }
}
