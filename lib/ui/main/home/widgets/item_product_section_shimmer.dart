import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:macbro_app/core/theme/app_utils.dart';
import 'package:macbro_app/ui/main/home/widgets/item_product_shimmer.dart';

class ProductShimmerSectionWidget extends StatelessWidget {
  final String? title;

  const ProductShimmerSectionWidget({
    Key? key, this.title,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "$title",
                style: TextStyle(
                    color: Colors.black,
                    fontFamily: AppUtils.kFontFamily,
                    fontWeight: FontWeight.w700,
                    fontSize: 22.sp,
                    letterSpacing: 0.35.w),
              ),
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  'assets/svg/ic_arrow_right.svg',
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 250.h,
          child: ListView.builder(
            shrinkWrap: true,
            physics: const BouncingScrollPhysics(),
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (context, index) {
              return const ItemShimmerNewWidget();
            },
          ),
        ),

      ],
    );
  }
}
