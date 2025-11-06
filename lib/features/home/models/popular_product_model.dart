import 'dart:convert';

PopularProductModel popularProductModelFromJson(String str) => PopularProductModel.fromJson(json.decode(str));

String popularProductModelToJson(PopularProductModel data) => json.encode(data.toJson());

class PopularProductModel {
  final int? totalSize;
  final dynamic limit;
  final dynamic offset;
  final List<Product>? products;

  PopularProductModel({
    this.totalSize,
    this.limit,
    this.offset,
    this.products,
  });

  PopularProductModel copyWith({
    int? totalSize,
    dynamic limit,
    dynamic offset,
    List<Product>? products,
  }) =>
      PopularProductModel(
        totalSize: totalSize ?? this.totalSize,
        limit: limit ?? this.limit,
        offset: offset ?? this.offset,
        products: products ?? this.products,
      );

  factory PopularProductModel.fromJson(Map<String, dynamic> json) => PopularProductModel(
    totalSize: json["total_size"],
    limit: json["limit"],
    offset: json["offset"],
    products: json["products"] == null ? [] : List<Product>.from(json["products"]!.map((x) => Product.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "total_size": totalSize,
    "limit": limit,
    "offset": offset,
    "products": products == null ? [] : List<dynamic>.from(products!.map((x) => x.toJson())),
  };
}

class Product {
  final int? id;
  final String? name;
  final String? description;
  final String? image;
  final int? categoryId;
  final List<CategoryId>? categoryIds;
  final List<Variation>? variations;
  final List<AddOn>? addOns;
  final String? attributes;
  final String? choiceOptions;
  final int? price;
  final int? tax;
  final String? taxType;
  final int? discount;
  final String? discountType;
  final String? availableTimeStarts;
  final String? availableTimeEnds;
  final int? veg;
  final int? status;
  final int? restaurantId;
  final String? createdAt;
  final String? updatedAt;
  final int? orderCount;
  final double? avgRating;
  final int? ratingCount;
  final int? recommended;
  final String? slug;
  final dynamic maximumCartQuantity;
  final int? isHalal;
  final int? itemStock;
  final int? sellCount;
  final String? stockType;
  final int? tempAvailable;
  final int? open;
  final int? reviewsCount;
  final List<Tag>? tags;
  final String? restaurantName;
  final int? restaurantStatus;
  final int? restaurantDiscount;
  final String? restaurantOpeningTime;
  final String? restaurantClosingTime;
  final bool? scheduleOrder;
  final int? minDeliveryTime;
  final int? maxDeliveryTime;
  final int? freeDelivery;
  final int? halalTagStatus;
  final List<String>? nutritionsName;
  final List<String>? allergiesName;
  final List<Cuisine>? cuisines;
  final List<dynamic>? taxData;
  final String? imageFullUrl;
  final List<Storage>? storage;
  final List<Translation>? translations;
  final List<Nutrition>? nutritions;
  final List<Allergy>? allergies;
  final List<dynamic>? newVariations;

  Product({
    this.id,
    this.name,
    this.description,
    this.image,
    this.categoryId,
    this.categoryIds,
    this.variations,
    this.addOns,
    this.attributes,
    this.choiceOptions,
    this.price,
    this.tax,
    this.taxType,
    this.discount,
    this.discountType,
    this.availableTimeStarts,
    this.availableTimeEnds,
    this.veg,
    this.status,
    this.restaurantId,
    this.createdAt,
    this.updatedAt,
    this.orderCount,
    this.avgRating,
    this.ratingCount,
    this.recommended,
    this.slug,
    this.maximumCartQuantity,
    this.isHalal,
    this.itemStock,
    this.sellCount,
    this.stockType,
    this.tempAvailable,
    this.open,
    this.reviewsCount,
    this.tags,
    this.restaurantName,
    this.restaurantStatus,
    this.restaurantDiscount,
    this.restaurantOpeningTime,
    this.restaurantClosingTime,
    this.scheduleOrder,
    this.minDeliveryTime,
    this.maxDeliveryTime,
    this.freeDelivery,
    this.halalTagStatus,
    this.nutritionsName,
    this.allergiesName,
    this.cuisines,
    this.taxData,
    this.imageFullUrl,
    this.storage,
    this.translations,
    this.nutritions,
    this.allergies,
    this.newVariations,
  });

  Product copyWith({
    int? id,
    String? name,
    String? description,
    String? image,
    int? categoryId,
    List<CategoryId>? categoryIds,
    List<Variation>? variations,
    List<AddOn>? addOns,
    String? attributes,
    String? choiceOptions,
    int? price,
    int? tax,
    String? taxType,
    int? discount,
    String? discountType,
    String? availableTimeStarts,
    String? availableTimeEnds,
    int? veg,
    int? status,
    int? restaurantId,
    String? createdAt,
    String? updatedAt,
    int? orderCount,
    double? avgRating,
    int? ratingCount,
    int? recommended,
    String? slug,
    dynamic maximumCartQuantity,
    int? isHalal,
    int? itemStock,
    int? sellCount,
    String? stockType,
    int? tempAvailable,
    int? open,
    int? reviewsCount,
    List<Tag>? tags,
    String? restaurantName,
    int? restaurantStatus,
    int? restaurantDiscount,
    String? restaurantOpeningTime,
    String? restaurantClosingTime,
    bool? scheduleOrder,
    int? minDeliveryTime,
    int? maxDeliveryTime,
    int? freeDelivery,
    int? halalTagStatus,
    List<String>? nutritionsName,
    List<String>? allergiesName,
    List<Cuisine>? cuisines,
    List<dynamic>? taxData,
    String? imageFullUrl,
    List<Storage>? storage,
    List<Translation>? translations,
    List<Nutrition>? nutritions,
    List<Allergy>? allergies,
    List<dynamic>? newVariations,
  }) =>
      Product(
        id: id ?? this.id,
        name: name ?? this.name,
        description: description ?? this.description,
        image: image ?? this.image,
        categoryId: categoryId ?? this.categoryId,
        categoryIds: categoryIds ?? this.categoryIds,
        variations: variations ?? this.variations,
        addOns: addOns ?? this.addOns,
        attributes: attributes ?? this.attributes,
        choiceOptions: choiceOptions ?? this.choiceOptions,
        price: price ?? this.price,
        tax: tax ?? this.tax,
        taxType: taxType ?? this.taxType,
        discount: discount ?? this.discount,
        discountType: discountType ?? this.discountType,
        availableTimeStarts: availableTimeStarts ?? this.availableTimeStarts,
        availableTimeEnds: availableTimeEnds ?? this.availableTimeEnds,
        veg: veg ?? this.veg,
        status: status ?? this.status,
        restaurantId: restaurantId ?? this.restaurantId,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        orderCount: orderCount ?? this.orderCount,
        avgRating: avgRating ?? this.avgRating,
        ratingCount: ratingCount ?? this.ratingCount,
        recommended: recommended ?? this.recommended,
        slug: slug ?? this.slug,
        maximumCartQuantity: maximumCartQuantity ?? this.maximumCartQuantity,
        isHalal: isHalal ?? this.isHalal,
        itemStock: itemStock ?? this.itemStock,
        sellCount: sellCount ?? this.sellCount,
        stockType: stockType ?? this.stockType,
        tempAvailable: tempAvailable ?? this.tempAvailable,
        open: open ?? this.open,
        reviewsCount: reviewsCount ?? this.reviewsCount,
        tags: tags ?? this.tags,
        restaurantName: restaurantName ?? this.restaurantName,
        restaurantStatus: restaurantStatus ?? this.restaurantStatus,
        restaurantDiscount: restaurantDiscount ?? this.restaurantDiscount,
        restaurantOpeningTime: restaurantOpeningTime ?? this.restaurantOpeningTime,
        restaurantClosingTime: restaurantClosingTime ?? this.restaurantClosingTime,
        scheduleOrder: scheduleOrder ?? this.scheduleOrder,
        minDeliveryTime: minDeliveryTime ?? this.minDeliveryTime,
        maxDeliveryTime: maxDeliveryTime ?? this.maxDeliveryTime,
        freeDelivery: freeDelivery ?? this.freeDelivery,
        halalTagStatus: halalTagStatus ?? this.halalTagStatus,
        nutritionsName: nutritionsName ?? this.nutritionsName,
        allergiesName: allergiesName ?? this.allergiesName,
        cuisines: cuisines ?? this.cuisines,
        taxData: taxData ?? this.taxData,
        imageFullUrl: imageFullUrl ?? this.imageFullUrl,
        storage: storage ?? this.storage,
        translations: translations ?? this.translations,
        nutritions: nutritions ?? this.nutritions,
        allergies: allergies ?? this.allergies,
        newVariations: newVariations ?? this.newVariations,
      );

  factory Product.fromJson(Map<String, dynamic> json) => Product(
    id: json["id"],
    name: json["name"],
    description: json["description"],
    image: json["image"],
    categoryId: json["category_id"],
    categoryIds: json["category_ids"] == null ? [] : List<CategoryId>.from(json["category_ids"]!.map((x) => CategoryId.fromJson(x))),
    variations: json["variations"] == null ? [] : List<Variation>.from(json["variations"]!.map((x) => Variation.fromJson(x))),
    addOns: json["add_ons"] == null ? [] : List<AddOn>.from(json["add_ons"]!.map((x) => AddOn.fromJson(x))),
    attributes: json["attributes"],
    choiceOptions: json["choice_options"],
    price: json["price"],
    tax: json["tax"],
    taxType: json["tax_type"],
    discount: json["discount"],
    discountType: json["discount_type"],
    availableTimeStarts: json["available_time_starts"],
    availableTimeEnds: json["available_time_ends"],
    veg: json["veg"],
    status: json["status"],
    restaurantId: json["restaurant_id"],
    createdAt: json["created_at"],
    updatedAt: json["updated_at"],
    orderCount: json["order_count"],
    avgRating: json["avg_rating"]?.toDouble(),
    ratingCount: json["rating_count"],
    recommended: json["recommended"],
    slug: json["slug"],
    maximumCartQuantity: json["maximum_cart_quantity"],
    isHalal: json["is_halal"],
    itemStock: json["item_stock"],
    sellCount: json["sell_count"],
    stockType: json["stock_type"],
    tempAvailable: json["temp_available"],
    open: json["open"],
    reviewsCount: json["reviews_count"],
    tags: json["tags"] == null ? [] : List<Tag>.from(json["tags"]!.map((x) => Tag.fromJson(x))),
    restaurantName: json["restaurant_name"],
    restaurantStatus: json["restaurant_status"],
    restaurantDiscount: json["restaurant_discount"],
    restaurantOpeningTime: json["restaurant_opening_time"],
    restaurantClosingTime: json["restaurant_closing_time"],
    scheduleOrder: json["schedule_order"],
    minDeliveryTime: json["min_delivery_time"],
    maxDeliveryTime: json["max_delivery_time"],
    freeDelivery: json["free_delivery"],
    halalTagStatus: json["halal_tag_status"],
    nutritionsName: json["nutritions_name"] == null ? [] : List<String>.from(json["nutritions_name"]!.map((x) => x)),
    allergiesName: json["allergies_name"] == null ? [] : List<String>.from(json["allergies_name"]!.map((x) => x)),
    cuisines: json["cuisines"] == null ? [] : List<Cuisine>.from(json["cuisines"]!.map((x) => Cuisine.fromJson(x))),
    taxData: json["tax_data"] == null ? [] : List<dynamic>.from(json["tax_data"]!.map((x) => x)),
    imageFullUrl: json["image_full_url"],
    storage: json["storage"] == null ? [] : List<Storage>.from(json["storage"]!.map((x) => Storage.fromJson(x))),
    translations: json["translations"] == null ? [] : List<Translation>.from(json["translations"]!.map((x) => Translation.fromJson(x))),
    nutritions: json["nutritions"] == null ? [] : List<Nutrition>.from(json["nutritions"]!.map((x) => Nutrition.fromJson(x))),
    allergies: json["allergies"] == null ? [] : List<Allergy>.from(json["allergies"]!.map((x) => Allergy.fromJson(x))),
    newVariations: json["new_variations"] == null ? [] : List<dynamic>.from(json["new_variations"]!.map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "description": description,
    "image": image,
    "category_id": categoryId,
    "category_ids": categoryIds == null ? [] : List<dynamic>.from(categoryIds!.map((x) => x.toJson())),
    "variations": variations == null ? [] : List<dynamic>.from(variations!.map((x) => x.toJson())),
    "add_ons": addOns == null ? [] : List<dynamic>.from(addOns!.map((x) => x.toJson())),
    "attributes": attributes,
    "choice_options": choiceOptions,
    "price": price,
    "tax": tax,
    "tax_type": taxType,
    "discount": discount,
    "discount_type": discountType,
    "available_time_starts": availableTimeStarts,
    "available_time_ends": availableTimeEnds,
    "veg": veg,
    "status": status,
    "restaurant_id": restaurantId,
    "created_at": createdAt,
    "updated_at": updatedAt,
    "order_count": orderCount,
    "avg_rating": avgRating,
    "rating_count": ratingCount,
    "recommended": recommended,
    "slug": slug,
    "maximum_cart_quantity": maximumCartQuantity,
    "is_halal": isHalal,
    "item_stock": itemStock,
    "sell_count": sellCount,
    "stock_type": stockType,
    "temp_available": tempAvailable,
    "open": open,
    "reviews_count": reviewsCount,
    "tags": tags == null ? [] : List<dynamic>.from(tags!.map((x) => x.toJson())),
    "restaurant_name": restaurantName,
    "restaurant_status": restaurantStatus,
    "restaurant_discount": restaurantDiscount,
    "restaurant_opening_time": restaurantOpeningTime,
    "restaurant_closing_time": restaurantClosingTime,
    "schedule_order": scheduleOrder,
    "min_delivery_time": minDeliveryTime,
    "max_delivery_time": maxDeliveryTime,
    "free_delivery": freeDelivery,
    "halal_tag_status": halalTagStatus,
    "nutritions_name": nutritionsName == null ? [] : List<dynamic>.from(nutritionsName!.map((x) => x)),
    "allergies_name": allergiesName == null ? [] : List<dynamic>.from(allergiesName!.map((x) => x)),
    "cuisines": cuisines == null ? [] : List<dynamic>.from(cuisines!.map((x) => x.toJson())),
    "tax_data": taxData == null ? [] : List<dynamic>.from(taxData!.map((x) => x)),
    "image_full_url": imageFullUrl,
    "storage": storage == null ? [] : List<dynamic>.from(storage!.map((x) => x.toJson())),
    "translations": translations == null ? [] : List<dynamic>.from(translations!.map((x) => x.toJson())),
    "nutritions": nutritions == null ? [] : List<dynamic>.from(nutritions!.map((x) => x.toJson())),
    "allergies": allergies == null ? [] : List<dynamic>.from(allergies!.map((x) => x.toJson())),
    "new_variations": newVariations == null ? [] : List<dynamic>.from(newVariations!.map((x) => x)),
  };
}

class AddOn {
  final int? id;
  final String? name;
  final int? price;
  final String? createdAt;
  final String? updatedAt;
  final int? restaurantId;
  final int? status;
  final String? stockType;
  final int? addonStock;
  final int? sellCount;
  final int? addonCategoryId;
  final List<dynamic>? taxIds;
  final List<Translation>? translations;

  AddOn({
    this.id,
    this.name,
    this.price,
    this.createdAt,
    this.updatedAt,
    this.restaurantId,
    this.status,
    this.stockType,
    this.addonStock,
    this.sellCount,
    this.addonCategoryId,
    this.taxIds,
    this.translations,
  });

  AddOn copyWith({
    int? id,
    String? name,
    int? price,
    String? createdAt,
    String? updatedAt,
    int? restaurantId,
    int? status,
    String? stockType,
    int? addonStock,
    int? sellCount,
    int? addonCategoryId,
    List<dynamic>? taxIds,
    List<Translation>? translations,
  }) =>
      AddOn(
        id: id ?? this.id,
        name: name ?? this.name,
        price: price ?? this.price,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        restaurantId: restaurantId ?? this.restaurantId,
        status: status ?? this.status,
        stockType: stockType ?? this.stockType,
        addonStock: addonStock ?? this.addonStock,
        sellCount: sellCount ?? this.sellCount,
        addonCategoryId: addonCategoryId ?? this.addonCategoryId,
        taxIds: taxIds ?? this.taxIds,
        translations: translations ?? this.translations,
      );

  factory AddOn.fromJson(Map<String, dynamic> json) => AddOn(
    id: json["id"],
    name: json["name"],
    price: json["price"],
    createdAt: json["created_at"],
    updatedAt: json["updated_at"],
    restaurantId: json["restaurant_id"],
    status: json["status"],
    stockType: json["stock_type"],
    addonStock: json["addon_stock"],
    sellCount: json["sell_count"],
    addonCategoryId: json["addon_category_id"],
    taxIds: json["tax_ids"] == null ? [] : List<dynamic>.from(json["tax_ids"]!.map((x) => x)),
    translations: json["translations"] == null ? [] : List<Translation>.from(json["translations"]!.map((x) => Translation.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "price": price,
    "created_at": createdAt,
    "updated_at": updatedAt,
    "restaurant_id": restaurantId,
    "status": status,
    "stock_type": stockType,
    "addon_stock": addonStock,
    "sell_count": sellCount,
    "addon_category_id": addonCategoryId,
    "tax_ids": taxIds == null ? [] : List<dynamic>.from(taxIds!.map((x) => x)),
    "translations": translations == null ? [] : List<dynamic>.from(translations!.map((x) => x.toJson())),
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

class Allergy {
  final int? id;
  final String? allergy;
  final String? createdAt;
  final String? updatedAt;
  final AllergyPivot? pivot;

  Allergy({
    this.id,
    this.allergy,
    this.createdAt,
    this.updatedAt,
    this.pivot,
  });

  Allergy copyWith({
    int? id,
    String? allergy,
    String? createdAt,
    String? updatedAt,
    AllergyPivot? pivot,
  }) =>
      Allergy(
        id: id ?? this.id,
        allergy: allergy ?? this.allergy,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        pivot: pivot ?? this.pivot,
      );

  factory Allergy.fromJson(Map<String, dynamic> json) => Allergy(
    id: json["id"],
    allergy: json["allergy"],
    createdAt: json["created_at"],
    updatedAt: json["updated_at"],
    pivot: json["pivot"] == null ? null : AllergyPivot.fromJson(json["pivot"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "allergy": allergy,
    "created_at": createdAt,
    "updated_at": updatedAt,
    "pivot": pivot?.toJson(),
  };
}

class AllergyPivot {
  final int? foodId;
  final int? allergyId;

  AllergyPivot({
    this.foodId,
    this.allergyId,
  });

  AllergyPivot copyWith({
    int? foodId,
    int? allergyId,
  }) =>
      AllergyPivot(
        foodId: foodId ?? this.foodId,
        allergyId: allergyId ?? this.allergyId,
      );

  factory AllergyPivot.fromJson(Map<String, dynamic> json) => AllergyPivot(
    foodId: json["food_id"],
    allergyId: json["allergy_id"],
  );

  Map<String, dynamic> toJson() => {
    "food_id": foodId,
    "allergy_id": allergyId,
  };
}

class CategoryId {
  final String? id;
  final int? position;
  final String? categoryName;

  CategoryId({
    this.id,
    this.position,
    this.categoryName,
  });

  CategoryId copyWith({
    String? id,
    int? position,
    String? categoryName,
  }) =>
      CategoryId(
        id: id ?? this.id,
        position: position ?? this.position,
        categoryName: categoryName ?? this.categoryName,
      );

  factory CategoryId.fromJson(Map<String, dynamic> json) => CategoryId(
    id: json["id"],
    position: json["position"],
    categoryName: json["category_name"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "position": position,
    "category_name": categoryName,
  };
}

class Cuisine {
  final int? id;
  final String? name;
  final String? image;

  Cuisine({
    this.id,
    this.name,
    this.image,
  });

  Cuisine copyWith({
    int? id,
    String? name,
    String? image,
  }) =>
      Cuisine(
        id: id ?? this.id,
        name: name ?? this.name,
        image: image ?? this.image,
      );

  factory Cuisine.fromJson(Map<String, dynamic> json) => Cuisine(
    id: json["id"],
    name: json["name"],
    image: json["image"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "image": image,
  };
}

class Nutrition {
  final int? id;
  final String? nutrition;
  final String? createdAt;
  final String? updatedAt;
  final NutritionPivot? pivot;

  Nutrition({
    this.id,
    this.nutrition,
    this.createdAt,
    this.updatedAt,
    this.pivot,
  });

  Nutrition copyWith({
    int? id,
    String? nutrition,
    String? createdAt,
    String? updatedAt,
    NutritionPivot? pivot,
  }) =>
      Nutrition(
        id: id ?? this.id,
        nutrition: nutrition ?? this.nutrition,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        pivot: pivot ?? this.pivot,
      );

  factory Nutrition.fromJson(Map<String, dynamic> json) => Nutrition(
    id: json["id"],
    nutrition: json["nutrition"],
    createdAt: json["created_at"],
    updatedAt: json["updated_at"],
    pivot: json["pivot"] == null ? null : NutritionPivot.fromJson(json["pivot"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "nutrition": nutrition,
    "created_at": createdAt,
    "updated_at": updatedAt,
    "pivot": pivot?.toJson(),
  };
}

class NutritionPivot {
  final int? foodId;
  final int? nutritionId;

  NutritionPivot({
    this.foodId,
    this.nutritionId,
  });

  NutritionPivot copyWith({
    int? foodId,
    int? nutritionId,
  }) =>
      NutritionPivot(
        foodId: foodId ?? this.foodId,
        nutritionId: nutritionId ?? this.nutritionId,
      );

  factory NutritionPivot.fromJson(Map<String, dynamic> json) => NutritionPivot(
    foodId: json["food_id"],
    nutritionId: json["nutrition_id"],
  );

  Map<String, dynamic> toJson() => {
    "food_id": foodId,
    "nutrition_id": nutritionId,
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

class Tag {
  final int? id;
  final String? tag;
  final String? createdAt;
  final String? updatedAt;
  final TagPivot? pivot;

  Tag({
    this.id,
    this.tag,
    this.createdAt,
    this.updatedAt,
    this.pivot,
  });

  Tag copyWith({
    int? id,
    String? tag,
    String? createdAt,
    String? updatedAt,
    TagPivot? pivot,
  }) =>
      Tag(
        id: id ?? this.id,
        tag: tag ?? this.tag,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        pivot: pivot ?? this.pivot,
      );

  factory Tag.fromJson(Map<String, dynamic> json) => Tag(
    id: json["id"],
    tag: json["tag"],
    createdAt: json["created_at"],
    updatedAt: json["updated_at"],
    pivot: json["pivot"] == null ? null : TagPivot.fromJson(json["pivot"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "tag": tag,
    "created_at": createdAt,
    "updated_at": updatedAt,
    "pivot": pivot?.toJson(),
  };
}

class TagPivot {
  final int? foodId;
  final int? tagId;

  TagPivot({
    this.foodId,
    this.tagId,
  });

  TagPivot copyWith({
    int? foodId,
    int? tagId,
  }) =>
      TagPivot(
        foodId: foodId ?? this.foodId,
        tagId: tagId ?? this.tagId,
      );

  factory TagPivot.fromJson(Map<String, dynamic> json) => TagPivot(
    foodId: json["food_id"],
    tagId: json["tag_id"],
  );

  Map<String, dynamic> toJson() => {
    "food_id": foodId,
    "tag_id": tagId,
  };
}

class Variation {
  final int? variationId;
  final String? name;
  final String? type;
  final dynamic min;
  final dynamic max;
  final String? required;
  final List<Value>? values;

  Variation({
    this.variationId,
    this.name,
    this.type,
    this.min,
    this.max,
    this.required,
    this.values,
  });

  Variation copyWith({
    int? variationId,
    String? name,
    String? type,
    dynamic min,
    dynamic max,
    String? required,
    List<Value>? values,
  }) =>
      Variation(
        variationId: variationId ?? this.variationId,
        name: name ?? this.name,
        type: type ?? this.type,
        min: min ?? this.min,
        max: max ?? this.max,
        required: required ?? this.required,
        values: values ?? this.values,
      );

  factory Variation.fromJson(Map<String, dynamic> json) => Variation(
    variationId: json["variation_id"],
    name: json["name"],
    type: json["type"],
    min: json["min"],
    max: json["max"],
    required: json["required"],
    values: json["values"] == null ? [] : List<Value>.from(json["values"]!.map((x) => Value.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "variation_id": variationId,
    "name": name,
    "type": type,
    "min": min,
    "max": max,
    "required": required,
    "values": values == null ? [] : List<dynamic>.from(values!.map((x) => x.toJson())),
  };
}

class Value {
  final String? label;
  final dynamic optionPrice;
  final String? totalStock;
  final String? stockType;
  final String? sellCount;
  final int? optionId;
  final int? currentStock;

  Value({
    this.label,
    this.optionPrice,
    this.totalStock,
    this.stockType,
    this.sellCount,
    this.optionId,
    this.currentStock,
  });

  Value copyWith({
    String? label,
    dynamic optionPrice,
    String? totalStock,
    String? stockType,
    String? sellCount,
    int? optionId,
    int? currentStock,
  }) =>
      Value(
        label: label ?? this.label,
        optionPrice: optionPrice ?? this.optionPrice,
        totalStock: totalStock ?? this.totalStock,
        stockType: stockType ?? this.stockType,
        sellCount: sellCount ?? this.sellCount,
        optionId: optionId ?? this.optionId,
        currentStock: currentStock ?? this.currentStock,
      );

  factory Value.fromJson(Map<String, dynamic> json) => Value(
    label: json["label"],
    optionPrice: json["optionPrice"],
    totalStock: json["total_stock"],
    stockType: json["stock_type"],
    sellCount: json["sell_count"],
    optionId: json["option_id"],
    currentStock: json["current_stock"],
  );

  Map<String, dynamic> toJson() => {
    "label": label,
    "optionPrice": optionPrice,
    "total_stock": totalStock,
    "stock_type": stockType,
    "sell_count": sellCount,
    "option_id": optionId,
    "current_stock": currentStock,
  };
}
