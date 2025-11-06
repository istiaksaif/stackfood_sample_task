import 'dart:convert';

import '../../shared/model/restaurant.dart';

BannerModel bannerModelFromJson(String str) =>
    BannerModel.fromJson(json.decode(str));

String bannerModelToJson(BannerModel data) => json.encode(data.toJson());

class BannerModel {
  final List<dynamic>? campaigns;
  final List<Banner>? banners;

  BannerModel({this.campaigns, this.banners});

  BannerModel copyWith({List<dynamic>? campaigns, List<Banner>? banners}) =>
      BannerModel(
        campaigns: campaigns ?? this.campaigns,
        banners: banners ?? this.banners,
      );

  factory BannerModel.fromJson(Map<String, dynamic> json) => BannerModel(
    campaigns: json["campaigns"] == null
        ? []
        : List<dynamic>.from(json["campaigns"]!.map((x) => x)),
    banners: json["banners"] == null
        ? []
        : List<Banner>.from(json["banners"]!.map((x) => Banner.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "campaigns": campaigns == null
        ? []
        : List<dynamic>.from(campaigns!.map((x) => x)),
    "banners": banners == null
        ? []
        : List<dynamic>.from(banners!.map((x) => x.toJson())),
  };
}

class Banner {
  final int? id;
  final String? title;
  final String? type;
  final String? image;
  final Restaurant? restaurant;
  final dynamic food;
  final String? imageFullUrl;

  Banner({
    this.id,
    this.title,
    this.type,
    this.image,
    this.restaurant,
    this.food,
    this.imageFullUrl,
  });

  Banner copyWith({
    int? id,
    String? title,
    String? type,
    String? image,
    Restaurant? restaurant,
    dynamic food,
    String? imageFullUrl,
  }) => Banner(
    id: id ?? this.id,
    title: title ?? this.title,
    type: type ?? this.type,
    image: image ?? this.image,
    restaurant: restaurant ?? this.restaurant,
    food: food ?? this.food,
    imageFullUrl: imageFullUrl ?? this.imageFullUrl,
  );

  factory Banner.fromJson(Map<String, dynamic> json) => Banner(
    id: json["id"],
    title: json["title"],
    type: json["type"],
    image: json["image"],
    restaurant: json["restaurant"] == null
        ? null
        : Restaurant.fromJson(json["restaurant"]),
    food: json["food"],
    imageFullUrl: json["image_full_url"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "title": title,
    "type": type,
    "image": image,
    "restaurant": restaurant?.toJson(),
    "food": food,
    "image_full_url": imageFullUrl,
  };
}
