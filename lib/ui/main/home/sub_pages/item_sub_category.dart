import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ItemSubCategoryWidget extends StatelessWidget {
  final String? name;
  final String? image;

  const ItemSubCategoryWidget({Key? key, required this.name, this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:(){
        // Get.to(SubCategoryBuilder(),arguments: [
        //   children,name
        // ]);
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
        width: 166.w,
        height: 196.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.r),
          color: Colors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 96.h,
              child: image!.isNotEmpty
                  ? CachedNetworkImage(
                      imageUrl: "$image",
                    )
                  : SvgPicture.asset("assets/svg/macbro.svg"),
            ),
            SizedBox(
              height: 8.h,
            ),
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Text(
                  "$name ",
                  maxLines: 2,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      overflow: TextOverflow.ellipsis,
                      color: Colors.black,
                      fontSize: 17.sp,
                      fontFamily: "Sf_Pro",
                      letterSpacing: -0.41.w,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
