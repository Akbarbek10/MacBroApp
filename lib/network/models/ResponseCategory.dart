class ResponseCategory {
  ResponseCategory({
      this.categories, 
      this.count,});

  ResponseCategory.fromJson(dynamic json) {
    if (json['categories'] != null) {
      categories = [];
      json['categories'].forEach((v) {
        categories?.add(MyCategory.fromJson(v));
      });
    }
    count = json['count'];
  }
  List<MyCategory>? categories;
  String? count;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (categories != null) {
      map['categories'] = categories?.map((v) => v.toJson()).toList();
    }
    map['count'] = count;
    return map;
  }

}

class MyCategory {
  MyCategory({
      this.id, 
      this.name, 
      this.slug, 
      this.active, 
      this.description, 
      this.order, 
      this.children, 
      this.image, 
      this.wide,});

  MyCategory.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    slug = json['slug'];
    active = json['active'];
    description = json['description'];
    order = json['order'];
    if (json['children'] != null) {
      children = [];
      json['children'].forEach((v) {
        children?.add(Children.fromJson(v));
      });
    }
    image = json['image'];
    wide = json['wide'];
  }
  String? id;
  String? name;
  String? slug;
  bool? active;
  String? description;
  String? order;
  List<Children>? children;
  String? image;
  bool? wide;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    map['slug'] = slug;
    map['active'] = active;
    map['description'] = description;
    map['order'] = order;
    if (children != null) {
      map['children'] = children?.map((v) => v.toJson()).toList();
    }
    map['image'] = image;
    map['wide'] = wide;
    return map;
  }

}

class Children {
  Children({
      this.id, 
      this.name, 
      this.slug, 
      this.active, 
      this.description, 
      this.order, 
      this.image, 
      this.children, 
      this.createdAt, 
      this.updatedAt,});

  Children.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    slug = json['slug'];
    active = json['active'];
    description = json['description'];
    order = json['order'];
    image = json['image'];
    children = json['children'];
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
  dynamic children;
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
    map['children'] = children;
    map['created_at'] = createdAt;
    map['updated_at'] = updatedAt;
    return map;
  }

}