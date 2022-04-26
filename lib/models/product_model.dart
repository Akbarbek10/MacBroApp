class ProductModel{
  String? name;
  String? price;
  String? image;
  bool? isFavourite = false;
  int? discount;

  ProductModel({
    this.name,
    this.price,
    this.image,
    this.isFavourite,
    this.discount,
  });
}