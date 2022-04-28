
class ResponseBanner {
  ResponseBanner({
      this.banners, 
      this.count,});

  ResponseBanner.fromJson(dynamic json) {
    if (json['banners'] != null) {
      banners = [];
      json['banners'].forEach((v) {
        banners?.add(MyBanner.fromJson(v));
      });
    }
    count = json['count'];
  }
  List<MyBanner>? banners;
  String? count;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (banners != null) {
      map['banners'] = banners?.map((v) => v.toJson()).toList();
    }
    map['count'] = count;
    return map;
  }

}

class MyBanner {
  MyBanner({
      this.id, 
      this.title, 
      this.slug, 
      this.active, 
      this.image, 
      this.url, 
      this.description, 
      this.lang, 
      this.price, 
      this.buttonTitle, 
      this.position, 
      this.type,});

  MyBanner.fromJson(dynamic json) {
    id = json['id'];
    title = json['title'];
    slug = json['slug'];
    active = json['active'];
    image = json['image'];
    url = json['url'];
    description = json['description'];
    lang = json['lang'];
    price = json['price'];
    buttonTitle = json['button_title'];
    position = json['position'] != null ? Position.fromJson(json['position']) : null;
    type = json['type'];
  }
  String? id;
  String? title;
  String? slug;
  bool? active;
  String? image;
  String? url;
  String? description;
  String? lang;
  int? price;
  String? buttonTitle;
  Position? position;
  String? type;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['title'] = title;
    map['slug'] = slug;
    map['active'] = active;
    map['image'] = image;
    map['url'] = url;
    map['description'] = description;
    map['lang'] = lang;
    map['price'] = price;
    map['button_title'] = buttonTitle;
    if (position != null) {
      map['position'] = position?.toJson();
    }
    map['type'] = type;
    return map;
  }

}

class Position {
  Position({
      this.id, 
      this.title, 
      this.slug, 
      this.active, 
      this.size, 
      this.description, 
      this.createdAt, 
      this.updatedAt,});

  Position.fromJson(dynamic json) {
    id = json['id'];
    title = json['title'];
    slug = json['slug'];
    active = json['active'];
    size = json['size'];
    description = json['description'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }
  String? id;
  String? title;
  String? slug;
  bool? active;
  String? size;
  String? description;
  String? createdAt;
  String? updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['title'] = title;
    map['slug'] = slug;
    map['active'] = active;
    map['size'] = size;
    map['description'] = description;
    map['created_at'] = createdAt;
    map['updated_at'] = updatedAt;
    return map;
  }

}