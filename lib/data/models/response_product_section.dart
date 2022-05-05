class ResponseProductSection {
  ResponseProductSection({
      this.featuredLists, 
      this.count,});

  ResponseProductSection.fromJson(dynamic json) {
    if (json['featured_lists'] != null) {
      featuredLists = [];
      json['featured_lists'].forEach((v) {
        featuredLists?.add(ProductSection.fromJson(v));
      });
    }
    count = json['count'];
  }
  List<ProductSection>? featuredLists;
  String? count;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (featuredLists != null) {
      map['featured_lists'] = featuredLists?.map((v) => v.toJson()).toList();
    }
    map['count'] = count;
    return map;
  }

}

class ProductSection {
  ProductSection({
      this.id, 
      this.title, 
      this.slug, 
      this.products, 
      this.order, 
      this.createdAt, 
      this.lang, 
      this.active, 
      this.description,});

  ProductSection.fromJson(dynamic json) {
    id = json['id'];
    title = json['title'];
    slug = json['slug'];
    if (json['products'] != null) {
      products = [];
      json['products'].forEach((v) {
        products?.add(Product.fromJson(v));
      });
    }
    order = json['order'];
    createdAt = json['created_at'];
    lang = json['lang'];
    active = json['active'];
    description = json['description'];
  }
  String? id;
  String? title;
  String? slug;
  List<Product>? products;
  String? order;
  String? createdAt;
  String? lang;
  bool? active;
  String? description;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['title'] = title;
    map['slug'] = slug;
    if (products != null) {
      map['products'] = products?.map((v) => v.toJson()).toList();
    }
    map['order'] = order;
    map['created_at'] = createdAt;
    map['lang'] = lang;
    map['active'] = active;
    map['description'] = description;
    return map;
  }

}

class Product {
  Product({
      this.id, 
      this.name, 
      this.slug, 
      this.category, 
      this.brand, 
      this.previewText, 
      this.active, 
      this.price, 
      this.prices, 
      this.image, 
      this.externalId, 
      this.code, 
      this.order, 
      this.cheapestPrice, 
      this.createdAt, 
      this.updatedAt, 
      this.inStock,});

  Product.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    slug = json['slug'];
    category = json['category'] != null ? Category.fromJson(json['category']) : null;
    brand = json['brand'] != null ? Brand.fromJson(json['brand']) : null;
    previewText = json['preview_text'];
    active = json['active'];
    price = json['price'] != null ? Price.fromJson(json['price']) : null;
    if (json['prices'] != null) {
      prices = [];
      json['prices'].forEach((v) {
        prices?.add(Prices.fromJson(v));
      });
    }
    image = json['image'];
    externalId = json['external_id'];
    code = json['code'];
    order = json['order'];
    cheapestPrice = json['cheapest_price'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    inStock = json['inStock'] != null ? InStock.fromJson(json['inStock']) : null;
  }
  String? id;
  String? name;
  String? slug;
  Category? category;
  Brand? brand;
  String? previewText;
  bool? active;
  Price? price;
  List<Prices>? prices;
  String? image;
  String? externalId;
  String? code;
  String? order;
  int? cheapestPrice;
  String? createdAt;
  String? updatedAt;
  InStock? inStock;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    map['slug'] = slug;
    if (category != null) {
      map['category'] = category?.toJson();
    }
    if (brand != null) {
      map['brand'] = brand?.toJson();
    }
    map['preview_text'] = previewText;
    map['active'] = active;
    if (price != null) {
      map['price'] = price?.toJson();
    }
    if (prices != null) {
      map['prices'] = prices?.map((v) => v.toJson()).toList();
    }
    map['image'] = image;
    map['external_id'] = externalId;
    map['code'] = code;
    map['order'] = order;
    map['cheapest_price'] = cheapestPrice;
    map['created_at'] = createdAt;
    map['updated_at'] = updatedAt;
    if (inStock != null) {
      map['inStock'] = inStock?.toJson();
    }
    return map;
  }

}

class InStock {
  InStock({
      this.samarkand, 
      this.tashkentCity,});

  InStock.fromJson(dynamic json) {
    samarkand = json['samarkand'];
    tashkentCity = json['tashkent_city'];
  }
  bool? samarkand;
  bool? tashkentCity;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['samarkand'] = samarkand;
    map['tashkent_city'] = tashkentCity;
    return map;
  }

}

class Prices {
  Prices({
      this.id, 
      this.type, 
      this.price, 
      this.oldPrice, 
      this.secondPrice,});

  Prices.fromJson(dynamic json) {
    id = json['id'];
    type = json['type'];
    price = json['price'];
    oldPrice = json['old_price'];
    secondPrice = json['second_price'];
  }
  String? id;
  String? type;
  int? price;
  int? oldPrice;
  int? secondPrice;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['type'] = type;
    map['price'] = price;
    map['old_price'] = oldPrice;
    map['second_price'] = secondPrice;
    return map;
  }

}

class Price {
  Price({
      this.price, 
      this.oldPrice, 
      this.uzsPrice, 
      this.secondPrice, 
      this.secondUzsPrice,});

  Price.fromJson(dynamic json) {
    price = json['price'];
    oldPrice = json['old_price'];
    uzsPrice = json['uzs_price'];
    secondPrice = json['second_price'];
    secondUzsPrice = json['second_uzs_price'];
  }
  int? price;
  int? oldPrice;
  int? uzsPrice;
  int? secondPrice;
  int? secondUzsPrice;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['price'] = price;
    map['old_price'] = oldPrice;
    map['uzs_price'] = uzsPrice;
    map['second_price'] = secondPrice;
    map['second_uzs_price'] = secondUzsPrice;
    return map;
  }

}

class Brand {
  Brand({
      this.id, 
      this.name, 
      this.slug, 
      this.active, 
      this.previewText, 
      this.description, 
      this.image, 
      this.createdAt, 
      this.updatedAt,});

  Brand.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    slug = json['slug'];
    active = json['active'];
    previewText = json['preview_text'];
    description = json['description'];
    image = json['image'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }
  String? id;
  String? name;
  String? slug;
  bool? active;
  String? previewText;
  String? description;
  String? image;
  String? createdAt;
  String? updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    map['slug'] = slug;
    map['active'] = active;
    map['preview_text'] = previewText;
    map['description'] = description;
    map['image'] = image;
    map['created_at'] = createdAt;
    map['updated_at'] = updatedAt;
    return map;
  }

}

class Category {
  Category({
      this.id, 
      this.name, 
      this.slug, 
      this.parent, 
      this.active, 
      this.order, 
      this.image,});

  Category.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    slug = json['slug'];
    parent = json['parent'] != null ? Parent.fromJson(json['parent']) : null;
    active = json['active'];
    order = json['order'];
    image = json['image'];
  }
  String? id;
  String? name;
  String? slug;
  Parent? parent;
  bool? active;
  String? order;
  String? image;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    map['slug'] = slug;
    if (parent != null) {
      map['parent'] = parent?.toJson();
    }
    map['active'] = active;
    map['order'] = order;
    map['image'] = image;
    return map;
  }

}

class Parent {
  Parent({
      this.id, 
      this.name, 
      this.slug, 
      this.active, 
      this.description, 
      this.order, 
      this.image, 
      this.createdAt, 
      this.updatedAt,});

  Parent.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    slug = json['slug'];
    active = json['active'];
    description = json['description'];
    order = json['order'];
    image = json['image'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }
  String? id;
  String? name;
  String? slug;
  bool? active;
  String? description;
  String? order;
  String? image;
  String? createdAt;
  String? updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    map['slug'] = slug;
    map['active'] = active;
    map['description'] = description;
    map['order'] = order;
    map['image'] = image;
    map['created_at'] = createdAt;
    map['updated_at'] = updatedAt;
    return map;
  }

}