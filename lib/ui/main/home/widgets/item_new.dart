import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ItemNewWidget extends StatelessWidget {
  final String? name;
  final String? image;
  final String? price;

  const ItemNewWidget({
    Key? key,
    required this.name,
    required this.price,
    this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 3.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 152.w,
              height: 162.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.r),
                color: Colors.white,
              ),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Positioned(
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        margin: EdgeInsets.symmetric(
                            vertical: 24.h, horizontal: 14.w),
                        child: Image.network("$image"),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 8.w,
                    right: 8.w,
                    child: Container(
                      width: 24.w,
                      height: 24.w,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Color(0xFFF5F5F5)),
                      child: Padding(
                        padding: EdgeInsets.all(6.0.w),
                        child: Icon(Icons.favorite,
                            color: Color(0xFFABABAB), size: 12.w),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 8.h,
            ),
            Container(
              width: 152.w,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "$name",
                    maxLines: 2,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 17.sp,
                        overflow: TextOverflow.ellipsis,
                        fontFamily: "Sf_Pro",
                        fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    height: 4.h,
                  ),
                  Text(
                    "от $price сум",
                    style: TextStyle(
                      color: Colors.blue,
                      fontFamily: "Sf_Pro",
                      letterSpacing: -0.24.w,
                      fontWeight: FontWeight.w700,
                      fontSize: 15.sp,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
