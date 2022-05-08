import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:macbro_app/core/theme/app_utils.dart';

class MyAppBar extends StatelessWidget with PreferredSizeWidget{
  final String title;

  MyAppBar(this.title);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      iconTheme: const IconThemeData(
        color: Colors.black, //change your color here
      ),
      backgroundColor: Colors.white,
      elevation: 0.5,
      title: Text(
        title,
        textAlign: TextAlign.center,
        style: TextStyle(
            color: Colors.black,
            fontSize: 20.sp,
            letterSpacing: 0.38.w,
            fontFamily: AppUtils.kFontFamily,
            fontWeight: FontWeight.w600),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}