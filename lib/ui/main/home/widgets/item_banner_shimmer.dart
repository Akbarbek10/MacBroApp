import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:macbro_app/core/theme/app_colors.dart';
import 'package:shimmer/shimmer.dart';

class ItemShimmerBannerWidget extends StatelessWidget {
  const ItemShimmerBannerWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Shimmer.fromColors(
        baseColor: AppColors.shimmerBaseColor,
        highlightColor: AppColors.shimmerHighlightColor,
        child: Container(
          width: 343.w,
          height: 180.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.r),
            color: const Color(0xFFEFEDEF),
          ),
        ),
      ),
    );
  }
}
