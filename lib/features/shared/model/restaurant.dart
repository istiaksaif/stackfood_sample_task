class Restaurant {
  final int? id;
  final String? name;
  final String? phone;
  final String? email;
  final String? logo;
  final String? latitude;
  final String? longitude;
  final String? address;
  final dynamic footerText;
  final int? minimumOrder;
  final int? comission;
  final bool? scheduleOrder;
  final dynamic openingTime;
  final dynamic closeingTime;
  final int? status;
  final int? vendorId;
  final String? createdAt;
  final String? updatedAt;
  final bool? freeDelivery;
  final String? coverPhoto;
  final bool? delivery;
  final bool? takeAway;
  final bool? foodSection;
  final double? tax;
  final int? zoneId;
  final bool? reviewsSection;
  final bool? active;
  final String? offDay;
  final int? selfDeliverySystem;
  final bool? posSystem;
  final int? minimumShippingCharge;
  final String? deliveryTime;
  final int? veg;
  final int? nonVeg;
  final int? orderCount;
  final int? totalOrder;
  final int? perKmShippingCharge;
  final String? restaurantModel;
  final dynamic maximumShippingCharge;
  final String? slug;
  final bool? orderSubscriptionActive;
  final bool? cutlery;
  final String? metaTitle;
  final String? metaDescription;
  final String? metaImage;
  final int? announcement;
  final String? announcementMessage;
  final dynamic qrCode;
  final dynamic additionalData;
  final String? additionalDocuments;
  final dynamic packageId;
  final String? tin;
  final DateTime? tinExpireDate;
  final String? tinCertificateImage;
  final int? restaurantStatus;
  final int? priceStartsFrom;
  final double? distance;
  final int? foodsCount;
  final int? reviewsCommentsCount;
  final List<Food>? foods;
  final List<Coupon>? coupons;
  final List<Cuisine>? cuisine;
  final List<dynamic>? ratings;
  final double? avgRating;
  final int? ratingCount;
  final int? positiveRating;
  final int? customerOrderDate;
  final bool? customerDateOrderSratus;
  final bool? instantOrder;
  final bool? halalTagStatus;
  final bool? isExtraPackagingActive;
  final bool? extraPackagingStatus;
  final int? extraPackagingAmount;
  final String? deliveryFee;
  final String? currentOpeningTime;
  final bool? isDineInActive;

  final int? scheduleAdvanceDineInBookingDuration;
  final String? scheduleAdvanceDineInBookingDurationTimeFormat;

  final bool? canEditOrder;
  final List<String>? characteristics;

  final bool? gstStatus;
  final String? gstCode;

  final bool? freeDeliveryDistanceStatus;
  final String? freeDeliveryDistanceValue;

  final String? logoFullUrl;
  final String? coverPhotoFullUrl;
  final String? metaImageFullUrl;
  final String? tinCertificateImageFullUrl;

  final List<Translation>? translations;
  final List<Storage>? storage;
  final dynamic discount;
  final List<Schedule>? schedules;

  final String? availableTimeStarts;
  final String? availableTimeEnds;
  final List<dynamic>? tags;

  Restaurant({
    this.id,
    this.name,
    this.phone,
    this.email,
    this.logo,
    this.latitude,
    this.longitude,
    this.address,
    this.footerText,
    this.minimumOrder,
    this.comission,
    this.scheduleOrder,
    this.openingTime,
    this.closeingTime,
    this.status,
    this.vendorId,
    this.createdAt,
    this.updatedAt,
    this.freeDelivery,
    this.coverPhoto,
    this.delivery,
    this.takeAway,
    this.foodSection,
    this.tax,
    this.zoneId,
    this.reviewsSection,
    this.active,
    this.offDay,
    this.selfDeliverySystem,
    this.posSystem,
    this.minimumShippingCharge,
    this.deliveryTime,
    this.veg,
    this.nonVeg,
    this.orderCount,
    this.totalOrder,
    this.perKmShippingCharge,
    this.restaurantModel,
    this.maximumShippingCharge,
    this.slug,
    this.orderSubscriptionActive,
    this.cutlery,
    this.metaTitle,
    this.metaDescription,
    this.metaImage,
    this.announcement,
    this.announcementMessage,
    this.qrCode,
    this.additionalData,
    this.additionalDocuments,
    this.packageId,
    this.tin,
    this.tinExpireDate,
    this.tinCertificateImage,
    this.restaurantStatus,
    this.priceStartsFrom,
    this.distance,
    this.foodsCount,
    this.reviewsCommentsCount,
    this.foods,
    this.coupons,
    this.cuisine,
    this.ratings,
    this.avgRating,
    this.ratingCount,
    this.positiveRating,
    this.customerOrderDate,
    this.customerDateOrderSratus,
    this.instantOrder,
    this.halalTagStatus,
    this.isExtraPackagingActive,
    this.extraPackagingStatus,
    this.extraPackagingAmount,
    this.deliveryFee,
    this.currentOpeningTime,
    this.isDineInActive,
    this.scheduleAdvanceDineInBookingDuration,
    this.scheduleAdvanceDineInBookingDurationTimeFormat,
    this.canEditOrder,
    this.characteristics,
    this.gstStatus,
    this.gstCode,
    this.freeDeliveryDistanceStatus,
    this.freeDeliveryDistanceValue,
    this.logoFullUrl,
    this.coverPhotoFullUrl,
    this.metaImageFullUrl,
    this.tinCertificateImageFullUrl,
    this.translations,
    this.storage,
    this.discount,
    this.schedules,
    this.availableTimeStarts,
    this.availableTimeEnds,
    this.tags,
  });

  factory Restaurant.fromJson(Map<String, dynamic> json) => Restaurant(
    id: json["id"],
    name: json["name"],
    phone: json["phone"],
    email: json["email"],
    logo: json["logo"],
    latitude: json["latitude"],
    longitude: json["longitude"],
    address: json["address"],
    footerText: json["footer_text"],
    minimumOrder: json["minimum_order"],
    comission: json["comission"],
    scheduleOrder: json["schedule_order"],
    openingTime: json["opening_time"],
    closeingTime: json["closeing_time"],
    status: json["status"],
    vendorId: json["vendor_id"],
    createdAt: json["created_at"],
    updatedAt: json["updated_at"],
    freeDelivery: json["free_delivery"],
    coverPhoto: json["cover_photo"],
    delivery: json["delivery"],
    takeAway: json["take_away"],
    foodSection: json["food_section"],
    tax: json["tax"]?.toDouble(),
    zoneId: json["zone_id"],
    reviewsSection: json["reviews_section"],
    active: json["active"],
    offDay: json["off_day"],
    selfDeliverySystem: json["self_delivery_system"],
    posSystem: json["pos_system"],
    minimumShippingCharge: json["minimum_shipping_charge"],
    deliveryTime: json["delivery_time"],
    veg: json["veg"],
    nonVeg: json["non_veg"],
    orderCount: json["order_count"],
    totalOrder: json["total_order"],
    perKmShippingCharge: json["per_km_shipping_charge"],
    restaurantModel: json["restaurant_model"],
    maximumShippingCharge: json["maximum_shipping_charge"],
    slug: json["slug"],
    orderSubscriptionActive: json["order_subscription_active"],
    cutlery: json["cutlery"],
    metaTitle: json["meta_title"],
    metaDescription: json["meta_description"],
    metaImage: json["meta_image"],
    announcement: json["announcement"],
    announcementMessage: json["announcement_message"],
    qrCode: json["qr_code"],
    additionalData: json["additional_data"],
    additionalDocuments: json["additional_documents"],
    packageId: json["package_id"],
    tin: json["tin"],
    tinExpireDate: json["tin_expire_date"] == null
        ? null
        : DateTime.parse(json["tin_expire_date"]),
    tinCertificateImage: json["tin_certificate_image"],

    // combined
    restaurantStatus: json["restaurant_status"],
    priceStartsFrom: json["price_starts_from"],
    distance: json["distance"]?.toDouble(),
    foodsCount: json["foods_count"],
    reviewsCommentsCount: json["reviews_comments_count"],

    foods: json["foods"] == null
        ? []
        : List<Food>.from(json["foods"].map((x) => Food.fromJson(x))),

    coupons: json["coupons"] == null
        ? []
        : List<Coupon>.from(json["coupons"].map((x) => Coupon.fromJson(x))),

    cuisine: json["cuisine"] == null
        ? []
        : List<Cuisine>.from(json["cuisine"].map((x) => Cuisine.fromJson(x))),

    ratings: json["ratings"] == null
        ? []
        : List<dynamic>.from(json["ratings"].map((x) => x)),

    avgRating: json["avg_rating"]?.toDouble(),
    ratingCount: json["rating_count"],
    positiveRating: json["positive_rating"],

    customerOrderDate: json["customer_order_date"],
    customerDateOrderSratus: json["customer_date_order_sratus"],

    instantOrder: json["instant_order"],
    halalTagStatus: json["halal_tag_status"],
    isExtraPackagingActive: json["is_extra_packaging_active"],
    extraPackagingStatus: json["extra_packaging_status"],
    extraPackagingAmount: json["extra_packaging_amount"],
    deliveryFee: json["delivery_fee"],
    currentOpeningTime: json["current_opening_time"],
    isDineInActive: json["is_dine_in_active"],

    scheduleAdvanceDineInBookingDuration:
        json["schedule_advance_dine_in_booking_duration"],
    scheduleAdvanceDineInBookingDurationTimeFormat:
        json["schedule_advance_dine_in_booking_duration_time_format"],

    canEditOrder: json["can_edit_order"],
    characteristics: json["characteristics"] == null
        ? []
        : List<String>.from(json["characteristics"].map((x) => x)),

    gstStatus: json["gst_status"],
    gstCode: json["gst_code"],
    freeDeliveryDistanceStatus: json["free_delivery_distance_status"],
    freeDeliveryDistanceValue: json["free_delivery_distance_value"],

    logoFullUrl: json["logo_full_url"],
    coverPhotoFullUrl: json["cover_photo_full_url"],
    metaImageFullUrl: json["meta_image_full_url"],
    tinCertificateImageFullUrl: json["tin_certificate_image_full_url"],

    translations: json["translations"] == null
        ? []
        : List<Translation>.from(
            json["translations"].map((x) => Translation.fromJson(x)),
          ),
    storage: json["storage"] == null
        ? []
        : List<Storage>.from(json["storage"].map((x) => Storage.fromJson(x))),

    discount: json["discount"],

    schedules: json["schedules"] == null
        ? []
        : List<Schedule>.from(
            json["schedules"].map((x) => Schedule.fromJson(x)),
          ),

    availableTimeStarts: json["available_time_starts"],
    availableTimeEnds: json["available_time_ends"],

    tags: json["tags"] == null
        ? []
        : List<dynamic>.from(json["tags"].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {};
}

class Coupon {
  final int? id;
  final String? title;
  final String? code;
  final DateTime? startDate;
  final DateTime? expireDate;
  final int? minPurchase;
  final int? maxDiscount;
  final int? discount;
  final String? discountType;
  final String? couponType;
  final int? limit;
  final int? status;
  final String? createdAt;
  final String? updatedAt;
  final String? data;
  final int? totalUses;
  final String? createdBy;
  final String? customerId;
  final dynamic slug;
  final int? restaurantId;
  final List<Translation>? translations;

  Coupon({
    this.id,
    this.title,
    this.code,
    this.startDate,
    this.expireDate,
    this.minPurchase,
    this.maxDiscount,
    this.discount,
    this.discountType,
    this.couponType,
    this.limit,
    this.status,
    this.createdAt,
    this.updatedAt,
    this.data,
    this.totalUses,
    this.createdBy,
    this.customerId,
    this.slug,
    this.restaurantId,
    this.translations,
  });

  Coupon copyWith({
    int? id,
    String? title,
    String? code,
    DateTime? startDate,
    DateTime? expireDate,
    int? minPurchase,
    int? maxDiscount,
    int? discount,
    String? discountType,
    String? couponType,
    int? limit,
    int? status,
    String? createdAt,
    String? updatedAt,
    String? data,
    int? totalUses,
    String? createdBy,
    String? customerId,
    dynamic slug,
    int? restaurantId,
    List<Translation>? translations,
  }) => Coupon(
    id: id ?? this.id,
    title: title ?? this.title,
    code: code ?? this.code,
    startDate: startDate ?? this.startDate,
    expireDate: expireDate ?? this.expireDate,
    minPurchase: minPurchase ?? this.minPurchase,
    maxDiscount: maxDiscount ?? this.maxDiscount,
    discount: discount ?? this.discount,
    discountType: discountType ?? this.discountType,
    couponType: couponType ?? this.couponType,
    limit: limit ?? this.limit,
    status: status ?? this.status,
    createdAt: createdAt ?? this.createdAt,
    updatedAt: updatedAt ?? this.updatedAt,
    data: data ?? this.data,
    totalUses: totalUses ?? this.totalUses,
    createdBy: createdBy ?? this.createdBy,
    customerId: customerId ?? this.customerId,
    slug: slug ?? this.slug,
    restaurantId: restaurantId ?? this.restaurantId,
    translations: translations ?? this.translations,
  );

  factory Coupon.fromJson(Map<String, dynamic> json) => Coupon(
    id: json["id"],
    title: json["title"],
    code: json["code"],
    startDate: json["start_date"] == null
        ? null
        : DateTime.parse(json["start_date"]),
    expireDate: json["expire_date"] == null
        ? null
        : DateTime.parse(json["expire_date"]),
    minPurchase: json["min_purchase"],
    maxDiscount: json["max_discount"],
    discount: json["discount"],
    discountType: json["discount_type"],
    couponType: json["coupon_type"],
    limit: json["limit"],
    status: json["status"],
    createdAt: json["created_at"],
    updatedAt: json["updated_at"],
    data: json["data"],
    totalUses: json["total_uses"],
    createdBy: json["created_by"],
    customerId: json["customer_id"],
    slug: json["slug"],
    restaurantId: json["restaurant_id"],
    translations: json["translations"] == null
        ? []
        : List<Translation>.from(
            json["translations"].map((x) => Translation.fromJson(x)),
          ),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "title": title,
    "code": code,
    "start_date": startDate == null
        ? null
        : "${startDate!.year.toString().padLeft(4, '0')}-${startDate!.month.toString().padLeft(2, '0')}-${startDate!.day.toString().padLeft(2, '0')}",
    "expire_date": expireDate == null
        ? null
        : "${expireDate!.year.toString().padLeft(4, '0')}-${expireDate!.month.toString().padLeft(2, '0')}-${expireDate!.day.toString().padLeft(2, '0')}",
    "min_purchase": minPurchase,
    "max_discount": maxDiscount,
    "discount": discount,
    "discount_type": discountType,
    "coupon_type": couponType,
    "limit": limit,
    "status": status,
    "created_at": createdAt,
    "updated_at": updatedAt,
    "data": data,
    "total_uses": totalUses,
    "created_by": createdBy,
    "customer_id": customerId,
    "slug": slug,
    "restaurant_id": restaurantId,
    "translations": translations == null
        ? []
        : List<dynamic>.from(translations!.map((x) => x.toJson())),
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
  }) => Translation(
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

class Cuisine {
  final int? id;
  final String? name;
  final String? image;
  final int? status;
  final String? slug;
  final String? createdAt;
  final String? updatedAt;
  final String? imageFullUrl;
  final Pivot? pivot;
  final List<Translation>? translations;
  final List<Storage>? storage;

  Cuisine({
    this.id,
    this.name,
    this.image,
    this.status,
    this.slug,
    this.createdAt,
    this.updatedAt,
    this.imageFullUrl,
    this.pivot,
    this.translations,
    this.storage,
  });

  Cuisine copyWith({
    int? id,
    String? name,
    String? image,
    int? status,
    String? slug,
    String? createdAt,
    String? updatedAt,
    String? imageFullUrl,
    Pivot? pivot,
    List<Translation>? translations,
    List<Storage>? storage,
  }) => Cuisine(
    id: id ?? this.id,
    name: name ?? this.name,
    image: image ?? this.image,
    status: status ?? this.status,
    slug: slug ?? this.slug,
    createdAt: createdAt ?? this.createdAt,
    updatedAt: updatedAt ?? this.updatedAt,
    imageFullUrl: imageFullUrl ?? this.imageFullUrl,
    pivot: pivot ?? this.pivot,
    translations: translations ?? this.translations,
    storage: storage ?? this.storage,
  );

  factory Cuisine.fromJson(Map<String, dynamic> json) => Cuisine(
    id: json["id"],
    name: json["name"],
    image: json["image"],
    status: json["status"],
    slug: json["slug"],
    createdAt: json["created_at"],
    updatedAt: json["updated_at"],
    imageFullUrl: json["image_full_url"],
    pivot: json["pivot"] == null ? null : Pivot.fromJson(json["pivot"]),
    translations: json["translations"] == null
        ? []
        : List<Translation>.from(
            json["translations"]!.map((x) => Translation.fromJson(x)),
          ),
    storage: json["storage"] == null
        ? []
        : List<Storage>.from(json["storage"]!.map((x) => Storage.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "image": image,
    "status": status,
    "slug": slug,
    "created_at": createdAt,
    "updated_at": updatedAt,
    "image_full_url": imageFullUrl,
    "pivot": pivot?.toJson(),
    "translations": translations == null
        ? []
        : List<dynamic>.from(translations!.map((x) => x.toJson())),
    "storage": storage == null
        ? []
        : List<dynamic>.from(storage!.map((x) => x.toJson())),
  };
}

class Pivot {
  final int? restaurantId;
  final int? cuisineId;

  Pivot({this.restaurantId, this.cuisineId});

  Pivot copyWith({int? restaurantId, int? cuisineId}) => Pivot(
    restaurantId: restaurantId ?? this.restaurantId,
    cuisineId: cuisineId ?? this.cuisineId,
  );

  factory Pivot.fromJson(Map<String, dynamic> json) =>
      Pivot(restaurantId: json["restaurant_id"], cuisineId: json["cuisine_id"]);

  Map<String, dynamic> toJson() => {
    "restaurant_id": restaurantId,
    "cuisine_id": cuisineId,
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
  }) => Storage(
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

class Food {
  final int? id;
  final String? image;
  final String? name;
  final String? imageFullUrl;
  final List<Storage>? storage;
  final List<Translation>? translations;

  Food({
    this.id,
    this.image,
    this.name,
    this.imageFullUrl,
    this.storage,
    this.translations,
  });

  Food copyWith({
    int? id,
    String? image,
    String? name,
    String? imageFullUrl,
    List<Storage>? storage,
    List<Translation>? translations,
  }) => Food(
    id: id ?? this.id,
    image: image ?? this.image,
    name: name ?? this.name,
    imageFullUrl: imageFullUrl ?? this.imageFullUrl,
    storage: storage ?? this.storage,
    translations: translations ?? this.translations,
  );

  factory Food.fromJson(Map<String, dynamic> json) => Food(
    id: json["id"],
    image: json["image"],
    name: json["name"],
    imageFullUrl: json["image_full_url"],
    storage: json["storage"] == null
        ? []
        : List<Storage>.from(json["storage"]!.map((x) => Storage.fromJson(x))),
    translations: json["translations"] == null
        ? []
        : List<Translation>.from(
            json["translations"]!.map((x) => Translation.fromJson(x)),
          ),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "image": image,
    "name": name,
    "image_full_url": imageFullUrl,
    "storage": storage == null
        ? []
        : List<dynamic>.from(storage!.map((x) => x.toJson())),
    "translations": translations == null
        ? []
        : List<dynamic>.from(translations!.map((x) => x.toJson())),
  };
}

class Schedule {
  final int? id;
  final int? restaurantId;
  final int? day;
  final String? openingTime;
  final String? closingTime;
  final dynamic createdAt;
  final dynamic updatedAt;

  Schedule({
    this.id,
    this.restaurantId,
    this.day,
    this.openingTime,
    this.closingTime,
    this.createdAt,
    this.updatedAt,
  });

  Schedule copyWith({
    int? id,
    int? restaurantId,
    int? day,
    String? openingTime,
    String? closingTime,
    dynamic createdAt,
    dynamic updatedAt,
  }) => Schedule(
    id: id ?? this.id,
    restaurantId: restaurantId ?? this.restaurantId,
    day: day ?? this.day,
    openingTime: openingTime ?? this.openingTime,
    closingTime: closingTime ?? this.closingTime,
    createdAt: createdAt ?? this.createdAt,
    updatedAt: updatedAt ?? this.updatedAt,
  );

  factory Schedule.fromJson(Map<String, dynamic> json) => Schedule(
    id: json["id"],
    restaurantId: json["restaurant_id"],
    day: json["day"],
    openingTime: json["opening_time"],
    closingTime: json["closing_time"],
    createdAt: json["created_at"],
    updatedAt: json["updated_at"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "restaurant_id": restaurantId,
    "day": day,
    "opening_time": openingTime,
    "closing_time": closingTime,
    "created_at": createdAt,
    "updated_at": updatedAt,
  };
}
