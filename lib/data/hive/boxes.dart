import 'package:hive/hive.dart';
import 'package:macbro_app/data/hive/product_hive_model.dart';

class Boxes{
  static Box<ProductHiveModel> getProducts(){
    return Hive.box<ProductHiveModel>("products");
  }
}