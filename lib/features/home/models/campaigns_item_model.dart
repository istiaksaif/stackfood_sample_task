// To parse this JSON data, do
//
//     final campaignsItemModel = campaignsItemModelFromJson(jsonString);

import 'dart:convert';

List<CampaignsItemModel> campaignsItemModelFromJson(String str) => List<CampaignsItemModel>.from(json.decode(str).map((x) => CampaignsItemModel.fromJson(x)));

String campaignsItemModelToJson(List<CampaignsItemModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class CampaignsItemModel {
  final int? id;
  final String? image;
  final String? description;
  final int? status;
  final int? adminId;
  final dynamic categoryId;
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
  final int? restaurantId;
  final String? createdAt;
  final String? updatedAt;
  final int? veg;
  final dynamic slug;
  final int? maximumCartQuantity;
  final int? tempAvailable;
  final int? open;
  final String? name;
  final String? availableTimeStarts;
  final String? availableTimeEnds;
  final DateTime? availableDateStarts;
  final DateTime? availableDateEnds;
  final int? recommended;
  final dynamic tags;
  final String? restaurantName;
  final int? restaurantStatus;
  final int? restaurantDiscount;
  final String? restaurantOpeningTime;
  final String? restaurantClosingTime;
  final bool? scheduleOrder;
  final int? ratingCount;
  final int? avgRating;
  final int? minDeliveryTime;
  final int? maxDeliveryTime;
  final int? freeDelivery;
  final int? halalTagStatus;
  final dynamic nutritionsName;
  final dynamic allergiesName;
  final List<Cuisine>? cuisines;
  final List<dynamic>? taxData;
  final String? imageFullUrl;
  final List<Translation>? translations;
  final List<Storage>? storage;

  CampaignsItemModel({
    this.id,
    this.image,
    this.description,
    this.status,
    this.adminId,
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
    this.restaurantId,
    this.createdAt,
    this.updatedAt,
    this.veg,
    this.slug,
    this.maximumCartQuantity,
    this.tempAvailable,
    this.open,
    this.name,
    this.availableTimeStarts,
    this.availableTimeEnds,
    this.availableDateStarts,
    this.availableDateEnds,
    this.recommended,
    this.tags,
    this.restaurantName,
    this.restaurantStatus,
    this.restaurantDiscount,
    this.restaurantOpeningTime,
    this.restaurantClosingTime,
    this.scheduleOrder,
    this.ratingCount,
    this.avgRating,
    this.minDeliveryTime,
    this.maxDeliveryTime,
    this.freeDelivery,
    this.halalTagStatus,
    this.nutritionsName,
    this.allergiesName,
    this.cuisines,
    this.taxData,
    this.imageFullUrl,
    this.translations,
    this.storage,
  });

  CampaignsItemModel copyWith({
    int? id,
    String? image,
    String? description,
    int? status,
    int? adminId,
    dynamic categoryId,
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
    int? restaurantId,
    String? createdAt,
    String? updatedAt,
    int? veg,
    dynamic slug,
    int? maximumCartQuantity,
    int? tempAvailable,
    int? open,
    String? name,
    String? availableTimeStarts,
    String? availableTimeEnds,
    DateTime? availableDateStarts,
    DateTime? availableDateEnds,
    int? recommended,
    dynamic tags,
    String? restaurantName,
    int? restaurantStatus,
    int? restaurantDiscount,
    String? restaurantOpeningTime,
    String? restaurantClosingTime,
    bool? scheduleOrder,
    int? ratingCount,
    int? avgRating,
    int? minDeliveryTime,
    int? maxDeliveryTime,
    int? freeDelivery,
    int? halalTagStatus,
    dynamic nutritionsName,
    dynamic allergiesName,
    List<Cuisine>? cuisines,
    List<dynamic>? taxData,
    String? imageFullUrl,
    List<Translation>? translations,
    List<Storage>? storage,
  }) =>
      CampaignsItemModel(
        id: id ?? this.id,
        image: image ?? this.image,
        description: description ?? this.description,
        status: status ?? this.status,
        adminId: adminId ?? this.adminId,
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
        restaurantId: restaurantId ?? this.restaurantId,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        veg: veg ?? this.veg,
        slug: slug ?? this.slug,
        maximumCartQuantity: maximumCartQuantity ?? this.maximumCartQuantity,
        tempAvailable: tempAvailable ?? this.tempAvailable,
        open: open ?? this.open,
        name: name ?? this.name,
        availableTimeStarts: availableTimeStarts ?? this.availableTimeStarts,
        availableTimeEnds: availableTimeEnds ?? this.availableTimeEnds,
        availableDateStarts: availableDateStarts ?? this.availableDateStarts,
        availableDateEnds: availableDateEnds ?? this.availableDateEnds,
        recommended: recommended ?? this.recommended,
        tags: tags ?? this.tags,
        restaurantName: restaurantName ?? this.restaurantName,
        restaurantStatus: restaurantStatus ?? this.restaurantStatus,
        restaurantDiscount: restaurantDiscount ?? this.restaurantDiscount,
        restaurantOpeningTime: restaurantOpeningTime ?? this.restaurantOpeningTime,
        restaurantClosingTime: restaurantClosingTime ?? this.restaurantClosingTime,
        scheduleOrder: scheduleOrder ?? this.scheduleOrder,
        ratingCount: ratingCount ?? this.ratingCount,
        avgRating: avgRating ?? this.avgRating,
        minDeliveryTime: minDeliveryTime ?? this.minDeliveryTime,
        maxDeliveryTime: maxDeliveryTime ?? this.maxDeliveryTime,
        freeDelivery: freeDelivery ?? this.freeDelivery,
        halalTagStatus: halalTagStatus ?? this.halalTagStatus,
        nutritionsName: nutritionsName ?? this.nutritionsName,
        allergiesName: allergiesName ?? this.allergiesName,
        cuisines: cuisines ?? this.cuisines,
        taxData: taxData ?? this.taxData,
        imageFullUrl: imageFullUrl ?? this.imageFullUrl,
        translations: translations ?? this.translations,
        storage: storage ?? this.storage,
      );

  factory CampaignsItemModel.fromJson(Map<String, dynamic> json) => CampaignsItemModel(
    id: json["id"],
    image: json["image"],
    description: json["description"],
    status: json["status"],
    adminId: json["admin_id"],
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
    restaurantId: json["restaurant_id"],
    createdAt: json["created_at"],
    updatedAt: json["updated_at"],
    veg: json["veg"],
    slug: json["slug"],
    maximumCartQuantity: json["maximum_cart_quantity"],
    tempAvailable: json["temp_available"],
    open: json["open"],
    name: json["name"],
    availableTimeStarts: json["available_time_starts"],
    availableTimeEnds: json["available_time_ends"],
    availableDateStarts: json["available_date_starts"] == null ? null : DateTime.parse(json["available_date_starts"]),
    availableDateEnds: json["available_date_ends"] == null ? null : DateTime.parse(json["available_date_ends"]),
    recommended: json["recommended"],
    tags: json["tags"],
    restaurantName: json["restaurant_name"],
    restaurantStatus: json["restaurant_status"],
    restaurantDiscount: json["restaurant_discount"],
    restaurantOpeningTime: json["restaurant_opening_time"],
    restaurantClosingTime: json["restaurant_closing_time"],
    scheduleOrder: json["schedule_order"],
    ratingCount: json["rating_count"],
    avgRating: json["avg_rating"],
    minDeliveryTime: json["min_delivery_time"],
    maxDeliveryTime: json["max_delivery_time"],
    freeDelivery: json["free_delivery"],
    halalTagStatus: json["halal_tag_status"],
    nutritionsName: json["nutritions_name"],
    allergiesName: json["allergies_name"],
    cuisines: json["cuisines"] == null ? [] : List<Cuisine>.from(json["cuisines"]!.map((x) => Cuisine.fromJson(x))),
    taxData: json["tax_data"] == null ? [] : List<dynamic>.from(json["tax_data"]!.map((x) => x)),
    imageFullUrl: json["image_full_url"],
    translations: json["translations"] == null ? [] : List<Translation>.from(json["translations"]!.map((x) => Translation.fromJson(x))),
    storage: json["storage"] == null ? [] : List<Storage>.from(json["storage"]!.map((x) => Storage.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "image": image,
    "description": description,
    "status": status,
    "admin_id": adminId,
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
    "restaurant_id": restaurantId,
    "created_at": createdAt,
    "updated_at": updatedAt,
    "veg": veg,
    "slug": slug,
    "maximum_cart_quantity": maximumCartQuantity,
    "temp_available": tempAvailable,
    "open": open,
    "name": name,
    "available_time_starts": availableTimeStarts,
    "available_time_ends": availableTimeEnds,
    "available_date_starts": "${availableDateStarts!.year.toString().padLeft(4, '0')}-${availableDateStarts!.month.toString().padLeft(2, '0')}-${availableDateStarts!.day.toString().padLeft(2, '0')}",
    "available_date_ends": "${availableDateEnds!.year.toString().padLeft(4, '0')}-${availableDateEnds!.month.toString().padLeft(2, '0')}-${availableDateEnds!.day.toString().padLeft(2, '0')}",
    "recommended": recommended,
    "tags": tags,
    "restaurant_name": restaurantName,
    "restaurant_status": restaurantStatus,
    "restaurant_discount": restaurantDiscount,
    "restaurant_opening_time": restaurantOpeningTime,
    "restaurant_closing_time": restaurantClosingTime,
    "schedule_order": scheduleOrder,
    "rating_count": ratingCount,
    "avg_rating": avgRating,
    "min_delivery_time": minDeliveryTime,
    "max_delivery_time": maxDeliveryTime,
    "free_delivery": freeDelivery,
    "halal_tag_status": halalTagStatus,
    "nutritions_name": nutritionsName,
    "allergies_name": allergiesName,
    "cuisines": cuisines == null ? [] : List<dynamic>.from(cuisines!.map((x) => x.toJson())),
    "tax_data": taxData == null ? [] : List<dynamic>.from(taxData!.map((x) => x)),
    "image_full_url": imageFullUrl,
    "translations": translations == null ? [] : List<dynamic>.from(translations!.map((x) => x.toJson())),
    "storage": storage == null ? [] : List<dynamic>.from(storage!.map((x) => x.toJson())),
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
  final dynamic addonCategoryId;
  final List<dynamic>? taxIds;
  final List<dynamic>? translations;

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
    dynamic addonCategoryId,
    List<dynamic>? taxIds,
    List<dynamic>? translations,
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
    translations: json["translations"] == null ? [] : List<dynamic>.from(json["translations"]!.map((x) => x)),
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
    "translations": translations == null ? [] : List<dynamic>.from(translations!.map((x) => x)),
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

class Variation {
  final String? name;
  final String? type;
  final dynamic min;
  final dynamic max;
  final String? required;
  final List<Value>? values;

  Variation({
    this.name,
    this.type,
    this.min,
    this.max,
    this.required,
    this.values,
  });

  Variation copyWith({
    String? name,
    String? type,
    dynamic min,
    dynamic max,
    String? required,
    List<Value>? values,
  }) =>
      Variation(
        name: name ?? this.name,
        type: type ?? this.type,
        min: min ?? this.min,
        max: max ?? this.max,
        required: required ?? this.required,
        values: values ?? this.values,
      );

  factory Variation.fromJson(Map<String, dynamic> json) => Variation(
    name: json["name"],
    type: json["type"],
    min: json["min"],
    max: json["max"],
    required: json["required"],
    values: json["values"] == null ? [] : List<Value>.from(json["values"]!.map((x) => Value.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
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
  final String? optionPrice;

  Value({
    this.label,
    this.optionPrice,
  });

  Value copyWith({
    String? label,
    String? optionPrice,
  }) =>
      Value(
        label: label ?? this.label,
        optionPrice: optionPrice ?? this.optionPrice,
      );

  factory Value.fromJson(Map<String, dynamic> json) => Value(
    label: json["label"],
    optionPrice: json["optionPrice"],
  );

  Map<String, dynamic> toJson() => {
    "label": label,
    "optionPrice": optionPrice,
  };
}
