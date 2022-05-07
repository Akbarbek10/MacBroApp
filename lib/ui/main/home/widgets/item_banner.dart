import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:macbro_app/data/models/response_banner.dart';
import 'package:macbro_app/core/theme/app_utils.dart';

import 'package:transparent_image/transparent_image.dart';

class ItemBannerWidget extends StatelessWidget {
  final MyBanner banner;

  const ItemBannerWidget({
    Key? key,
    required this.banner,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 343.w,
      height: 180.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.r),
        color: Color(0xFFEFEDEF),
      ),
      child: Stack(
        children: [
          Positioned.fill(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.r),
                child: FadeInImage.memoryNetwork(
                  placeholder: kTransparentImage,
                  image: "${banner.image}",
                  fit: BoxFit.fill,
                ),
              ),
          ),
          Row(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 18.w, vertical: 22.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "${banner.title}",
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: AppUtils.kFontFamily,
                          fontSize: 28.sp,
                          fontWeight: FontWeight.w700,
                          letterSpacing: 0.34.w),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
