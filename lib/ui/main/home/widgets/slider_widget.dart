import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:macbro_app/models/slider_model.dart';

class SliderWidget extends StatelessWidget {
  final SliderModel sliderModel;
  final int index;

  const SliderWidget({
    Key? key,
    required this.sliderModel,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 18.w, vertical: 22.h),
      width: 343.w,
      height: 180.h,
      decoration: BoxDecoration(
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
                  "${sliderModel.text}",
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: "Sf_Pro",
                      fontSize: 11.sp,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 0.07.w),
                ),
                Text(
                  "${sliderModel.productModel}",
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: "Sf_Pro",
                      fontSize: 28.sp,
                      fontWeight: FontWeight.w700,
                      letterSpacing: 0.34.w),
                ),
                Expanded(
                  child: Align(
                    child: SvgPicture.asset("assets/svg/ic_apple.svg"),
                    alignment: Alignment.bottomLeft,
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            width: 4.w,
          ),
          Expanded(
            child: Image.asset("assets/png/${sliderModel.productImage}"),
          )
        ],
      ),
    );
  }
}
