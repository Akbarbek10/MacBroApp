import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:macbro_app/base/base_functions.dart';
import 'package:macbro_app/ui/main/widgets/like_btn.dart';

class ItemProductFavouriteWidget extends StatelessWidget {
  final String? id;
  final String? name;
  final String? image;
  final int? price;

  const ItemProductFavouriteWidget({
    Key? key,
    required this.id,
    required this.name,
    required this.price,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int priceInSum = price ?? 0 * 11525;

    return Container(
      width: 164.w,
      height: 246.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            height: 164.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.r),
              color: Colors.white,
            ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Positioned(
                  child: Container(
                    margin:
                        EdgeInsets.symmetric(vertical: 8.h, horizontal: 12.w),
                    child: CachedNetworkImage(
                      imageUrl: "$image",
                    ),
                  ),
                ),
                Positioned(
                  top: 8.w,
                  right: 8.w,
                  child: LikeBtnWidget(
                    id: id,
                    name: name,
                    image: image,
                    price: price,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 8.h,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "$name",
                maxLines: 2,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15.sp,
                    overflow: TextOverflow.ellipsis,
                    fontFamily: "Sf_Pro",
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 2.h,
              ),
              Text(
                BaseFunctions.moneyFormatSymbol(priceInSum) + " сум",
                style: TextStyle(
                  color: const Color(0xFF007AFF),
                  fontFamily: "Sf_Pro",
                  letterSpacing: -0.24.w,
                  fontWeight: FontWeight.w400,
                  fontSize: 15.sp,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }


}
