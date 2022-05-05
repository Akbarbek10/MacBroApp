import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:macbro_app/data/hive/product_hive_model.dart';
import 'package:macbro_app/routes/app_pages.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();

  Hive.registerAdapter(ProductHiveModelAdapter());
  await Hive.openBox<ProductHiveModel>("products");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 870),
      builder: (_) {
        return GetMaterialApp(
          title: 'Title',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          getPages: AppPages.pages,
        );
      },
    );
  }
}
