import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';
import '../../../../core/theme/app_colors.dart';

class ItemShimmerCategoryWidget extends StatelessWidget {

  const ItemShimmerCategoryWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 166.w,
      height: 196.h,
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
    );

  }
}
