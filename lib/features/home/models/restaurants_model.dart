import 'dart:convert';

import '../../shared/model/restaurant.dart';

RestaurantsModel restaurantsModelFromJson(String str) =>
    RestaurantsModel.fromJson(json.decode(str));

String restaurantsModelToJson(RestaurantsModel data) =>
    json.encode(data.toJson());

class RestaurantsModel {
  final String? filterData;
  final int? totalSize;
  final String? limit;
  final String? offset;
  final List<Restaurant>? restaurants;

  RestaurantsModel({
    this.filterData,
    this.totalSize,
    this.limit,
    this.offset,
    this.restaurants,
  });

  RestaurantsModel copyWith({
    String? filterData,
    int? totalSize,
    String? limit,
    String? offset,
    List<Restaurant>? restaurants,
  }) => RestaurantsModel(
    filterData: filterData ?? this.filterData,
    totalSize: totalSize ?? this.totalSize,
    limit: limit ?? this.limit,
    offset: offset ?? this.offset,
    restaurants: restaurants ?? this.restaurants,
  );

  factory RestaurantsModel.fromJson(Map<String, dynamic> json) =>
      RestaurantsModel(
        filterData: json["filter_data"],
        totalSize: json["total_size"],
        limit: json["limit"],
        offset: json["offset"],
        restaurants: json["restaurants"] == null
            ? []
            : List<Restaurant>.from(
                json["restaurants"]!.map((x) => Restaurant.fromJson(x)),
              ),
      );

  Map<String, dynamic> toJson() => {
    "filter_data": filterData,
    "total_size": totalSize,
    "limit": limit,
    "offset": offset,
    "restaurants": restaurants == null
        ? []
        : List<dynamic>.from(restaurants!.map((x) => x.toJson())),
  };
}
