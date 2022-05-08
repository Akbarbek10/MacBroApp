import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:macbro_app/controllers/home_controller.dart';
import 'package:macbro_app/core/theme/app_utils.dart';
import 'package:macbro_app/ui/main/widgets/my_app_bar.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';


class ProfilePage extends GetView<HomeController> {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar("Профиль"),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.r),
                  color: Colors.white,
                ),
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Номер телефона",
                        style: TextStyle(
                            overflow: TextOverflow.ellipsis,
                            color: const Color(0xFFABABAB),
                            fontSize: 15.sp,
                            fontFamily: AppUtils.kFontFamily,
                            fontWeight: FontWeight.w400),
                      ),
                      SizedBox(height: 8.h),
                      TextFormField(
                        keyboardType: TextInputType.number,
                        autofocus: true,
                        initialValue: "+998 ",
                        inputFormatters: [
                          MaskTextInputFormatter(
                            mask: '+998 ## ### ## ##',
                            filter: {"#": RegExp(r'[0-9]')},
                          )
                        ],
                        style: const TextStyle(color: Color(0xFF2C2C2C)),
                        decoration: InputDecoration(
                          hintText: '+998 90 123 45 67',
                          hintStyle: TextStyle(
                              overflow: TextOverflow.ellipsis,
                              color: const Color(0xFFABABAB),
                              fontSize: 15.sp,
                              fontFamily: AppUtils.kFontFamily,
                              fontWeight: FontWeight.w400),
                          fillColor: const Color(0xFFF9F9FD),
                          filled: true,
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 12.w, vertical: 12.h),
                          border: InputBorder.none,
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Colors.blue, width: 1),
                              borderRadius: BorderRadius.circular(8.r)),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(8.r),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: SizedBox(
                    width: double.infinity,
                    child: TextButton(
                        onPressed: () {},
                        child: Padding(
                          padding:  EdgeInsets.symmetric(vertical: 4.h),
                          child: Text(
                            "Логин",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 17.sp,
                                fontFamily: AppUtils.kFontFamily,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        style: TextButton.styleFrom(
                          primary: const Color(0xFF014589),
                          backgroundColor: const Color(0xFF007AFF),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.r), // <-- Radius
                          ),
                        )),

                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
