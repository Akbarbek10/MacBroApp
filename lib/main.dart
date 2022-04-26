import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:macbro_app/ui/main/main_page.dart';
import 'package:macbro_app/ui/splash/splash_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 870),
      builder: (_) {
        return GetMaterialApp(
          title: 'Title',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          initialRoute: "/main_page",
          routes: {
            "/main_page": (context) => MainPage(),
            "/splash_page": (context) => SplashPage(),
          },
        );
      },
    );
  }
}
