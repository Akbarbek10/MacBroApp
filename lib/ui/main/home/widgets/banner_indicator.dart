import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class BannerIndicator extends StatelessWidget {
  final int activeIndex;
  final int length;

  const BannerIndicator({
    Key? key,
    required this.activeIndex,
    required this.length,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSmoothIndicator(
        effect: ScrollingDotsEffect(
            dotWidth: 5.w, dotHeight: 5.w, activeDotColor: const Color(0xFF021468)),
        activeIndex: activeIndex,
        count: length);
  }
}
