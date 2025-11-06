// To parse this JSON data, do
//
//     final categoriesModel = categoriesModelFromJson(jsonString);

import 'dart:convert';

List<CategoriesModel> categoriesModelFromJson(String str) => List<CategoriesModel>.from(json.decode(str).map((x) => CategoriesModel.fromJson(x)));

String categoriesModelToJson(List<CategoriesModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class CategoriesModel {
  final int? id;
  final String? name;
  final String? image;
  final int? parentId;
  final int? position;
  final int? status;
  final String? createdAt;
  final String? updatedAt;
  final int? priority;
  final String? slug;
  final int? productsCount;
  final int? childesCount;
  final dynamic orderCount;
  final String? imageFullUrl;
  final List<Translation>? translations;
  final List<Storage>? storage;
  final List<CategoriesModel>? childes;

  CategoriesModel({
    this.id,
    this.name,
    this.image,
    this.parentId,
    this.position,
    this.status,
    this.createdAt,
    this.updatedAt,
    this.priority,
    this.slug,
    this.productsCount,
    this.childesCount,
    this.orderCount,
    this.imageFullUrl,
    this.translations,
    this.storage,
    this.childes,
  });

  CategoriesModel copyWith({
    int? id,
    String? name,
    String? image,
    int? parentId,
    int? position,
    int? status,
    String? createdAt,
    String? updatedAt,
    int? priority,
    String? slug,
    int? productsCount,
    int? childesCount,
    dynamic orderCount,
    String? imageFullUrl,
    List<Translation>? translations,
    List<Storage>? storage,
    List<CategoriesModel>? childes,
  }) =>
      CategoriesModel(
        id: id ?? this.id,
        name: name ?? this.name,
        image: image ?? this.image,
        parentId: parentId ?? this.parentId,
        position: position ?? this.position,
        status: status ?? this.status,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        priority: priority ?? this.priority,
        slug: slug ?? this.slug,
        productsCount: productsCount ?? this.productsCount,
        childesCount: childesCount ?? this.childesCount,
        orderCount: orderCount ?? this.orderCount,
        imageFullUrl: imageFullUrl ?? this.imageFullUrl,
        translations: translations ?? this.translations,
        storage: storage ?? this.storage,
        childes: childes ?? this.childes,
      );

  factory CategoriesModel.fromJson(Map<String, dynamic> json) => CategoriesModel(
    id: json["id"],
    name: json["name"],
    image: json["image"],
    parentId: json["parent_id"],
    position: json["position"],
    status: json["status"],
    createdAt: json["created_at"],
    updatedAt: json["updated_at"],
    priority: json["priority"],
    slug: json["slug"],
    productsCount: json["products_count"],
    childesCount: json["childes_count"],
    orderCount: json["order_count"],
    imageFullUrl: json["image_full_url"],
    translations: json["translations"] == null ? [] : List<Translation>.from(json["translations"]!.map((x) => Translation.fromJson(x))),
    storage: json["storage"] == null ? [] : List<Storage>.from(json["storage"]!.map((x) => Storage.fromJson(x))),
    childes: json["childes"] == null ? [] : List<CategoriesModel>.from(json["childes"]!.map((x) => CategoriesModel.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "image": image,
    "parent_id": parentId,
    "position": position,
    "status": status,
    "created_at": createdAt,
    "updated_at": updatedAt,
    "priority": priority,
    "slug": slug,
    "products_count": productsCount,
    "childes_count": childesCount,
    "order_count": orderCount,
    "image_full_url": imageFullUrl,
    "translations": translations == null ? [] : List<dynamic>.from(translations!.map((x) => x.toJson())),
    "storage": storage == null ? [] : List<dynamic>.from(storage!.map((x) => x.toJson())),
    "childes": childes == null ? [] : List<dynamic>.from(childes!.map((x) => x.toJson())),
  };
}

class Storage {
  final int? id;
  final String? dataType;
  final String? dataId;
  final String? key;
  final String? value;
  final String? createdAt;
  final String? updatedAt;

  Storage({
    this.id,
    this.dataType,
    this.dataId,
    this.key,
    this.value,
    this.createdAt,
    this.updatedAt,
  });

  Storage copyWith({
    int? id,
    String? dataType,
    String? dataId,
    String? key,
    String? value,
    String? createdAt,
    String? updatedAt,
  }) =>
      Storage(
        id: id ?? this.id,
        dataType: dataType ?? this.dataType,
        dataId: dataId ?? this.dataId,
        key: key ?? this.key,
        value: value ?? this.value,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
      );

  factory Storage.fromJson(Map<String, dynamic> json) => Storage(
    id: json["id"],
    dataType: json["data_type"],
    dataId: json["data_id"],
    key: json["key"],
    value: json["value"],
    createdAt: json["created_at"],
    updatedAt: json["updated_at"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "data_type": dataType,
    "data_id": dataId,
    "key": key,
    "value": value,
    "created_at": createdAt,
    "updated_at": updatedAt,
  };
}

class Translation {
  final int? id;
  final String? translationableType;
  final int? translationableId;
  final String? locale;
  final String? key;
  final String? value;
  final dynamic createdAt;
  final dynamic updatedAt;

  Translation({
    this.id,
    this.translationableType,
    this.translationableId,
    this.locale,
    this.key,
    this.value,
    this.createdAt,
    this.updatedAt,
  });

  Translation copyWith({
    int? id,
    String? translationableType,
    int? translationableId,
    String? locale,
    String? key,
    String? value,
    dynamic createdAt,
    dynamic updatedAt,
  }) =>
      Translation(
        id: id ?? this.id,
        translationableType: translationableType ?? this.translationableType,
        translationableId: translationableId ?? this.translationableId,
        locale: locale ?? this.locale,
        key: key ?? this.key,
        value: value ?? this.value,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
      );

  factory Translation.fromJson(Map<String, dynamic> json) => Translation(
    id: json["id"],
    translationableType: json["translationable_type"],
    translationableId: json["translationable_id"],
    locale: json["locale"],
    key: json["key"],
    value: json["value"],
    createdAt: json["created_at"],
    updatedAt: json["updated_at"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "translationable_type": translationableType,
    "translationable_id": translationableId,
    "locale": locale,
    "key": key,
    "value": value,
    "created_at": createdAt,
    "updated_at": updatedAt,
  };
}
