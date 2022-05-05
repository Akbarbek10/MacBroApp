import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:macbro_app/data/hive/boxes.dart';
import 'package:macbro_app/data/hive/product_hive_model.dart';

class LikeBtnWidget extends StatelessWidget {
  final String? id;
  final String? name;
  final String? image;
  final int? price;

  const LikeBtnWidget({
    Key? key,
    required this.id,
    required this.name,
    required this.price,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        saveProduct(id, name, image, price);
      },
      child: Container(
        width: 24.w,
        height: 24.w,
        decoration:
            const BoxDecoration(shape: BoxShape.circle, color: Color(0xFFF5F5F5)),
        child: ValueListenableBuilder<Box<ProductHiveModel>>(
            valueListenable: Boxes.getProducts().listenable(),
            builder: (context, box, _) {
              bool isLiked = box.containsKey(id);
              if (isLiked) {
                return Icon(Icons.favorite,
                    color: const Color(0xFF007AFF), size: 12.w);
              } else {
                return Icon(Icons.favorite,
                    color: const Color(0xFFABABAB), size: 12.w);
              }
            }),
      ),
    );
  }
}

Future saveProduct(String? id, String? name, String? image, int? price) async {
  final productHiveModel = ProductHiveModel();
  productHiveModel.id = id;
  productHiveModel.name = name;
  productHiveModel.image = image;
  productHiveModel.cheapestPrice = price;

  final box = Boxes.getProducts();
  if (box.containsKey(id)) {
    box.delete(id);
  } else {
    box.put(id, productHiveModel);
  }
}
