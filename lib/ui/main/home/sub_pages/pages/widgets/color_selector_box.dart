import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ColorSelectorBoxWidget extends StatelessWidget {
  const ColorSelectorBoxWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 165.5.w,
      constraints: BoxConstraints(minHeight: 84.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.r),
        color: Colors.white,
      ),
      child: Padding(
        padding:  EdgeInsets.symmetric(vertical: 16.h,horizontal: 8.w),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 24.h,
                height: 24.h,
                color: Colors.red,
              ),
              SizedBox(height: 6.h,),
              const Text("name"),
            ],
          ),
        ),
      ),
    );
  }
}
