import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ItemCategoryWidget extends StatelessWidget {
  final String? name;
  final String? image;

  const ItemCategoryWidget({Key? key, required this.name, this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 32.w,vertical: 16.h),
      width: 166.w,
      height: 166.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.r),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            constraints: BoxConstraints(maxWidth: 102.w,minWidth: 40.w),
            height: 96.h,
            child: image!.isNotEmpty?Image.network("$image",fit: BoxFit.fitHeight,):Image.asset("assets/png/macbro.png"),
          ),
          SizedBox(
            height: 16.h,
          ),
          Text(
            "$name",
            style: TextStyle(
                color: Colors.black,
                fontSize: 17.sp,
                fontFamily: "Sf_Pro",
                letterSpacing: -0.41.w,
                fontWeight: FontWeight.w700),
          ),
        ],
      ),
    );
  }
}
