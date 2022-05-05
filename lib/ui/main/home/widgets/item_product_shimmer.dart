import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';
import '../../../../core/theme/app_colors.dart';

class ItemShimmerNewWidget extends StatelessWidget {
  const ItemShimmerNewWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 152.w,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 3.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 162.h,
              child: Shimmer.fromColors(
                baseColor: AppColors.shimmer_baseColor,
                highlightColor: AppColors.shimmer_highlightColor,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.r),
                    color: Colors.white,
                  ),
                ),
              ),
            ),

            SizedBox(
              height: 8.h,
            ),
            Container(
              width: 102.w,
              height: 22.h,
              child: Shimmer.fromColors(
                baseColor: AppColors.shimmer_baseColor,
                highlightColor: AppColors.shimmer_highlightColor,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.r),
                    color: Color(0xFFEFEDEF),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 4.h,
            ),
            Container(
              height: 22.h,
              child: Shimmer.fromColors(
                baseColor: AppColors.shimmer_baseColor,
                highlightColor: AppColors.shimmer_highlightColor,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.r),
                    color: const Color(0xFFEFEDEF),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
