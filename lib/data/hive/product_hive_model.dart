import 'package:hive/hive.dart';
part 'product_hive_model.g.dart';

@HiveType(typeId: 0)
class ProductHiveModel extends HiveObject{
  @HiveField(0)
  late String? id;

  @HiveField(1)
  late String? name;

  @HiveField(2)
  late String? image;

  @HiveField(3)
  late int? cheapestPrice;
}