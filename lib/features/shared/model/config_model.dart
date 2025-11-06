// To parse this JSON data, do
//
//     final configModel = configModelFromJson(jsonString);

import 'dart:convert';

ConfigModel configModelFromJson(String str) => ConfigModel.fromJson(json.decode(str));

String configModelToJson(ConfigModel data) => json.encode(data.toJson());

class ConfigModel {
  final String? businessName;
  final String? logo;
  final String? logoFullUrl;
  final String? address;
  final String? phone;
  final String? email;
  final String? country;
  final DefaultLocation? defaultLocation;
  final String? currencySymbol;
  final String? currencySymbolDirection;
  final int? appMinimumVersionAndroid;
  final dynamic appUrlAndroid;
  final int? appMinimumVersionIos;
  final dynamic appUrlIos;
  final bool? customerVerification;
  final bool? scheduleOrder;
  final bool? orderDeliveryVerification;
  final bool? cashOnDelivery;
  final bool? digitalPayment;
  final bool? demo;
  final bool? maintenanceMode;
  final String? orderConfirmationModel;
  final int? popularFood;
  final int? popularRestaurant;
  final int? newRestaurant;
  final int? mostReviewedFoods;
  final bool? showDmEarning;
  final bool? canceledByDeliveryman;
  final bool? canceledByRestaurant;
  final String? timeformat;
  final List<Language>? language;
  final bool? toggleVegNonVeg;
  final bool? toggleDmRegistration;
  final bool? toggleRestaurantRegistration;
  final int? scheduleOrderSlotDuration;
  final int? digitAfterDecimalPoint;
  final int? loyaltyPointExchangeRate;
  final int? loyaltyPointItemPurchasePoint;
  final int? loyaltyPointStatus;
  final int? minimumPointToTransfer;
  final int? customerWalletStatus;
  final int? refEarningStatus;
  final int? refEarningExchangeRate;
  final int? dmTipsStatus;
  final int? theme;
  final List<SocialMedia>? socialMedia;
  final List<SocialLogin>? socialLogin;
  final BusinessPlan? businessPlan;
  final int? adminCommission;
  final String? footerText;
  final String? favIcon;
  final String? favIconFullUrl;
  final bool? refundActiveStatus;
  final int? freeTrialPeriodStatus;
  final int? freeTrialPeriodData;
  final int? appMinimumVersionAndroidRestaurant;
  final dynamic appUrlAndroidRestaurant;
  final int? appMinimumVersionIosRestaurant;
  final dynamic appUrlIosRestaurant;
  final int? appMinimumVersionAndroidDeliveryman;
  final dynamic appUrlAndroidDeliveryman;
  final dynamic appMinimumVersionIosDeliveryman;
  final dynamic appUrlIosDeliveryman;
  final List<AppleLogin>? appleLogin;
  final int? orderSubscription;
  final String? cookiesText;
  final int? refundPolicyStatus;
  final int? cancellationPolicyStatus;
  final int? shippingPolicyStatus;
  final String? refundPolicyData;
  final String? cancellationPolicyData;
  final String? shippingPolicyData;
  final String? termsAndConditions;
  final String? privacyPolicy;
  final String? aboutUs;
  final bool? takeAway;
  final bool? repeatOrderOption;
  final bool? homeDelivery;
  final List<ActivePaymentMethodList>? activePaymentMethodList;
  final int? addFundStatus;
  final int? partialPaymentStatus;
  final String? partialPaymentMethod;
  final int? additionalChargeStatus;
  final String? additionalChargeName;
  final int? additionalCharge;
  final int? dmPictureUploadStatus;
  final DigitalPaymentInfo? digitalPaymentInfo;
  final BannerData? bannerData;
  final int? offlinePaymentStatus;
  final int? guestCheckoutStatus;
  final int? countryPickerStatus;
  final bool? instantOrder;
  final bool? extraPackagingCharge;
  final bool? customerDateOrderSratus;
  final int? customerOrderDate;
  final AdditionalJoinUsPageData? deliverymanAdditionalJoinUsPageData;
  final AdditionalJoinUsPageData? restaurantAdditionalJoinUsPageData;
  final String? disbursementType;
  final int? restaurantDisbursementWaitingTime;
  final int? dmDisbursementWaitingTime;
  final int? minAmountToPayRestaurant;
  final int? minAmountToPayDm;
  final bool? restaurantReviewReply;
  final dynamic maintenanceModeData;
  final int? firebaseOtpVerification;
  final CentralizeLogin? centralizeLogin;
  final int? subscriptionBusinessModel;
  final int? commissionBusinessModel;
  final int? subscriptionDeadlineWarningDays;
  final String? subscriptionDeadlineWarningMessage;
  final int? subscriptionFreeTrialDays;
  final String? subscriptionFreeTrialType;
  final int? subscriptionFreeTrialStatus;
  final int? dineInOrderOption;
  final AdminFreeDelivery? adminFreeDelivery;
  final String? systemTaxType;
  final int? systemTaxIncludeStatus;
  final bool? isSmsActive;
  final bool? isMailActive;

  ConfigModel({
    this.businessName,
    this.logo,
    this.logoFullUrl,
    this.address,
    this.phone,
    this.email,
    this.country,
    this.defaultLocation,
    this.currencySymbol,
    this.currencySymbolDirection,
    this.appMinimumVersionAndroid,
    this.appUrlAndroid,
    this.appMinimumVersionIos,
    this.appUrlIos,
    this.customerVerification,
    this.scheduleOrder,
    this.orderDeliveryVerification,
    this.cashOnDelivery,
    this.digitalPayment,
    this.demo,
    this.maintenanceMode,
    this.orderConfirmationModel,
    this.popularFood,
    this.popularRestaurant,
    this.newRestaurant,
    this.mostReviewedFoods,
    this.showDmEarning,
    this.canceledByDeliveryman,
    this.canceledByRestaurant,
    this.timeformat,
    this.language,
    this.toggleVegNonVeg,
    this.toggleDmRegistration,
    this.toggleRestaurantRegistration,
    this.scheduleOrderSlotDuration,
    this.digitAfterDecimalPoint,
    this.loyaltyPointExchangeRate,
    this.loyaltyPointItemPurchasePoint,
    this.loyaltyPointStatus,
    this.minimumPointToTransfer,
    this.customerWalletStatus,
    this.refEarningStatus,
    this.refEarningExchangeRate,
    this.dmTipsStatus,
    this.theme,
    this.socialMedia,
    this.socialLogin,
    this.businessPlan,
    this.adminCommission,
    this.footerText,
    this.favIcon,
    this.favIconFullUrl,
    this.refundActiveStatus,
    this.freeTrialPeriodStatus,
    this.freeTrialPeriodData,
    this.appMinimumVersionAndroidRestaurant,
    this.appUrlAndroidRestaurant,
    this.appMinimumVersionIosRestaurant,
    this.appUrlIosRestaurant,
    this.appMinimumVersionAndroidDeliveryman,
    this.appUrlAndroidDeliveryman,
    this.appMinimumVersionIosDeliveryman,
    this.appUrlIosDeliveryman,
    this.appleLogin,
    this.orderSubscription,
    this.cookiesText,
    this.refundPolicyStatus,
    this.cancellationPolicyStatus,
    this.shippingPolicyStatus,
    this.refundPolicyData,
    this.cancellationPolicyData,
    this.shippingPolicyData,
    this.termsAndConditions,
    this.privacyPolicy,
    this.aboutUs,
    this.takeAway,
    this.repeatOrderOption,
    this.homeDelivery,
    this.activePaymentMethodList,
    this.addFundStatus,
    this.partialPaymentStatus,
    this.partialPaymentMethod,
    this.additionalChargeStatus,
    this.additionalChargeName,
    this.additionalCharge,
    this.dmPictureUploadStatus,
    this.digitalPaymentInfo,
    this.bannerData,
    this.offlinePaymentStatus,
    this.guestCheckoutStatus,
    this.countryPickerStatus,
    this.instantOrder,
    this.extraPackagingCharge,
    this.customerDateOrderSratus,
    this.customerOrderDate,
    this.deliverymanAdditionalJoinUsPageData,
    this.restaurantAdditionalJoinUsPageData,
    this.disbursementType,
    this.restaurantDisbursementWaitingTime,
    this.dmDisbursementWaitingTime,
    this.minAmountToPayRestaurant,
    this.minAmountToPayDm,
    this.restaurantReviewReply,
    this.maintenanceModeData,
    this.firebaseOtpVerification,
    this.centralizeLogin,
    this.subscriptionBusinessModel,
    this.commissionBusinessModel,
    this.subscriptionDeadlineWarningDays,
    this.subscriptionDeadlineWarningMessage,
    this.subscriptionFreeTrialDays,
    this.subscriptionFreeTrialType,
    this.subscriptionFreeTrialStatus,
    this.dineInOrderOption,
    this.adminFreeDelivery,
    this.systemTaxType,
    this.systemTaxIncludeStatus,
    this.isSmsActive,
    this.isMailActive,
  });

  ConfigModel copyWith({
    String? businessName,
    String? logo,
    String? logoFullUrl,
    String? address,
    String? phone,
    String? email,
    String? country,
    DefaultLocation? defaultLocation,
    String? currencySymbol,
    String? currencySymbolDirection,
    int? appMinimumVersionAndroid,
    dynamic appUrlAndroid,
    int? appMinimumVersionIos,
    dynamic appUrlIos,
    bool? customerVerification,
    bool? scheduleOrder,
    bool? orderDeliveryVerification,
    bool? cashOnDelivery,
    bool? digitalPayment,
    bool? demo,
    bool? maintenanceMode,
    String? orderConfirmationModel,
    int? popularFood,
    int? popularRestaurant,
    int? newRestaurant,
    int? mostReviewedFoods,
    bool? showDmEarning,
    bool? canceledByDeliveryman,
    bool? canceledByRestaurant,
    String? timeformat,
    List<Language>? language,
    bool? toggleVegNonVeg,
    bool? toggleDmRegistration,
    bool? toggleRestaurantRegistration,
    int? scheduleOrderSlotDuration,
    int? digitAfterDecimalPoint,
    int? loyaltyPointExchangeRate,
    int? loyaltyPointItemPurchasePoint,
    int? loyaltyPointStatus,
    int? minimumPointToTransfer,
    int? customerWalletStatus,
    int? refEarningStatus,
    int? refEarningExchangeRate,
    int? dmTipsStatus,
    int? theme,
    List<SocialMedia>? socialMedia,
    List<SocialLogin>? socialLogin,
    BusinessPlan? businessPlan,
    int? adminCommission,
    String? footerText,
    String? favIcon,
    String? favIconFullUrl,
    bool? refundActiveStatus,
    int? freeTrialPeriodStatus,
    int? freeTrialPeriodData,
    int? appMinimumVersionAndroidRestaurant,
    dynamic appUrlAndroidRestaurant,
    int? appMinimumVersionIosRestaurant,
    dynamic appUrlIosRestaurant,
    int? appMinimumVersionAndroidDeliveryman,
    dynamic appUrlAndroidDeliveryman,
    dynamic appMinimumVersionIosDeliveryman,
    dynamic appUrlIosDeliveryman,
    List<AppleLogin>? appleLogin,
    int? orderSubscription,
    String? cookiesText,
    int? refundPolicyStatus,
    int? cancellationPolicyStatus,
    int? shippingPolicyStatus,
    String? refundPolicyData,
    String? cancellationPolicyData,
    String? shippingPolicyData,
    String? termsAndConditions,
    String? privacyPolicy,
    String? aboutUs,
    bool? takeAway,
    bool? repeatOrderOption,
    bool? homeDelivery,
    List<ActivePaymentMethodList>? activePaymentMethodList,
    int? addFundStatus,
    int? partialPaymentStatus,
    String? partialPaymentMethod,
    int? additionalChargeStatus,
    String? additionalChargeName,
    int? additionalCharge,
    int? dmPictureUploadStatus,
    DigitalPaymentInfo? digitalPaymentInfo,
    BannerData? bannerData,
    int? offlinePaymentStatus,
    int? guestCheckoutStatus,
    int? countryPickerStatus,
    bool? instantOrder,
    bool? extraPackagingCharge,
    bool? customerDateOrderSratus,
    int? customerOrderDate,
    AdditionalJoinUsPageData? deliverymanAdditionalJoinUsPageData,
    AdditionalJoinUsPageData? restaurantAdditionalJoinUsPageData,
    String? disbursementType,
    int? restaurantDisbursementWaitingTime,
    int? dmDisbursementWaitingTime,
    int? minAmountToPayRestaurant,
    int? minAmountToPayDm,
    bool? restaurantReviewReply,
    dynamic maintenanceModeData,
    int? firebaseOtpVerification,
    CentralizeLogin? centralizeLogin,
    int? subscriptionBusinessModel,
    int? commissionBusinessModel,
    int? subscriptionDeadlineWarningDays,
    String? subscriptionDeadlineWarningMessage,
    int? subscriptionFreeTrialDays,
    String? subscriptionFreeTrialType,
    int? subscriptionFreeTrialStatus,
    int? dineInOrderOption,
    AdminFreeDelivery? adminFreeDelivery,
    String? systemTaxType,
    int? systemTaxIncludeStatus,
    bool? isSmsActive,
    bool? isMailActive,
  }) =>
      ConfigModel(
        businessName: businessName ?? this.businessName,
        logo: logo ?? this.logo,
        logoFullUrl: logoFullUrl ?? this.logoFullUrl,
        address: address ?? this.address,
        phone: phone ?? this.phone,
        email: email ?? this.email,
        country: country ?? this.country,
        defaultLocation: defaultLocation ?? this.defaultLocation,
        currencySymbol: currencySymbol ?? this.currencySymbol,
        currencySymbolDirection: currencySymbolDirection ?? this.currencySymbolDirection,
        appMinimumVersionAndroid: appMinimumVersionAndroid ?? this.appMinimumVersionAndroid,
        appUrlAndroid: appUrlAndroid ?? this.appUrlAndroid,
        appMinimumVersionIos: appMinimumVersionIos ?? this.appMinimumVersionIos,
        appUrlIos: appUrlIos ?? this.appUrlIos,
        customerVerification: customerVerification ?? this.customerVerification,
        scheduleOrder: scheduleOrder ?? this.scheduleOrder,
        orderDeliveryVerification: orderDeliveryVerification ?? this.orderDeliveryVerification,
        cashOnDelivery: cashOnDelivery ?? this.cashOnDelivery,
        digitalPayment: digitalPayment ?? this.digitalPayment,
        demo: demo ?? this.demo,
        maintenanceMode: maintenanceMode ?? this.maintenanceMode,
        orderConfirmationModel: orderConfirmationModel ?? this.orderConfirmationModel,
        popularFood: popularFood ?? this.popularFood,
        popularRestaurant: popularRestaurant ?? this.popularRestaurant,
        newRestaurant: newRestaurant ?? this.newRestaurant,
        mostReviewedFoods: mostReviewedFoods ?? this.mostReviewedFoods,
        showDmEarning: showDmEarning ?? this.showDmEarning,
        canceledByDeliveryman: canceledByDeliveryman ?? this.canceledByDeliveryman,
        canceledByRestaurant: canceledByRestaurant ?? this.canceledByRestaurant,
        timeformat: timeformat ?? this.timeformat,
        language: language ?? this.language,
        toggleVegNonVeg: toggleVegNonVeg ?? this.toggleVegNonVeg,
        toggleDmRegistration: toggleDmRegistration ?? this.toggleDmRegistration,
        toggleRestaurantRegistration: toggleRestaurantRegistration ?? this.toggleRestaurantRegistration,
        scheduleOrderSlotDuration: scheduleOrderSlotDuration ?? this.scheduleOrderSlotDuration,
        digitAfterDecimalPoint: digitAfterDecimalPoint ?? this.digitAfterDecimalPoint,
        loyaltyPointExchangeRate: loyaltyPointExchangeRate ?? this.loyaltyPointExchangeRate,
        loyaltyPointItemPurchasePoint: loyaltyPointItemPurchasePoint ?? this.loyaltyPointItemPurchasePoint,
        loyaltyPointStatus: loyaltyPointStatus ?? this.loyaltyPointStatus,
        minimumPointToTransfer: minimumPointToTransfer ?? this.minimumPointToTransfer,
        customerWalletStatus: customerWalletStatus ?? this.customerWalletStatus,
        refEarningStatus: refEarningStatus ?? this.refEarningStatus,
        refEarningExchangeRate: refEarningExchangeRate ?? this.refEarningExchangeRate,
        dmTipsStatus: dmTipsStatus ?? this.dmTipsStatus,
        theme: theme ?? this.theme,
        socialMedia: socialMedia ?? this.socialMedia,
        socialLogin: socialLogin ?? this.socialLogin,
        businessPlan: businessPlan ?? this.businessPlan,
        adminCommission: adminCommission ?? this.adminCommission,
        footerText: footerText ?? this.footerText,
        favIcon: favIcon ?? this.favIcon,
        favIconFullUrl: favIconFullUrl ?? this.favIconFullUrl,
        refundActiveStatus: refundActiveStatus ?? this.refundActiveStatus,
        freeTrialPeriodStatus: freeTrialPeriodStatus ?? this.freeTrialPeriodStatus,
        freeTrialPeriodData: freeTrialPeriodData ?? this.freeTrialPeriodData,
        appMinimumVersionAndroidRestaurant: appMinimumVersionAndroidRestaurant ?? this.appMinimumVersionAndroidRestaurant,
        appUrlAndroidRestaurant: appUrlAndroidRestaurant ?? this.appUrlAndroidRestaurant,
        appMinimumVersionIosRestaurant: appMinimumVersionIosRestaurant ?? this.appMinimumVersionIosRestaurant,
        appUrlIosRestaurant: appUrlIosRestaurant ?? this.appUrlIosRestaurant,
        appMinimumVersionAndroidDeliveryman: appMinimumVersionAndroidDeliveryman ?? this.appMinimumVersionAndroidDeliveryman,
        appUrlAndroidDeliveryman: appUrlAndroidDeliveryman ?? this.appUrlAndroidDeliveryman,
        appMinimumVersionIosDeliveryman: appMinimumVersionIosDeliveryman ?? this.appMinimumVersionIosDeliveryman,
        appUrlIosDeliveryman: appUrlIosDeliveryman ?? this.appUrlIosDeliveryman,
        appleLogin: appleLogin ?? this.appleLogin,
        orderSubscription: orderSubscription ?? this.orderSubscription,
        cookiesText: cookiesText ?? this.cookiesText,
        refundPolicyStatus: refundPolicyStatus ?? this.refundPolicyStatus,
        cancellationPolicyStatus: cancellationPolicyStatus ?? this.cancellationPolicyStatus,
        shippingPolicyStatus: shippingPolicyStatus ?? this.shippingPolicyStatus,
        refundPolicyData: refundPolicyData ?? this.refundPolicyData,
        cancellationPolicyData: cancellationPolicyData ?? this.cancellationPolicyData,
        shippingPolicyData: shippingPolicyData ?? this.shippingPolicyData,
        termsAndConditions: termsAndConditions ?? this.termsAndConditions,
        privacyPolicy: privacyPolicy ?? this.privacyPolicy,
        aboutUs: aboutUs ?? this.aboutUs,
        takeAway: takeAway ?? this.takeAway,
        repeatOrderOption: repeatOrderOption ?? this.repeatOrderOption,
        homeDelivery: homeDelivery ?? this.homeDelivery,
        activePaymentMethodList: activePaymentMethodList ?? this.activePaymentMethodList,
        addFundStatus: addFundStatus ?? this.addFundStatus,
        partialPaymentStatus: partialPaymentStatus ?? this.partialPaymentStatus,
        partialPaymentMethod: partialPaymentMethod ?? this.partialPaymentMethod,
        additionalChargeStatus: additionalChargeStatus ?? this.additionalChargeStatus,
        additionalChargeName: additionalChargeName ?? this.additionalChargeName,
        additionalCharge: additionalCharge ?? this.additionalCharge,
        dmPictureUploadStatus: dmPictureUploadStatus ?? this.dmPictureUploadStatus,
        digitalPaymentInfo: digitalPaymentInfo ?? this.digitalPaymentInfo,
        bannerData: bannerData ?? this.bannerData,
        offlinePaymentStatus: offlinePaymentStatus ?? this.offlinePaymentStatus,
        guestCheckoutStatus: guestCheckoutStatus ?? this.guestCheckoutStatus,
        countryPickerStatus: countryPickerStatus ?? this.countryPickerStatus,
        instantOrder: instantOrder ?? this.instantOrder,
        extraPackagingCharge: extraPackagingCharge ?? this.extraPackagingCharge,
        customerDateOrderSratus: customerDateOrderSratus ?? this.customerDateOrderSratus,
        customerOrderDate: customerOrderDate ?? this.customerOrderDate,
        deliverymanAdditionalJoinUsPageData: deliverymanAdditionalJoinUsPageData ?? this.deliverymanAdditionalJoinUsPageData,
        restaurantAdditionalJoinUsPageData: restaurantAdditionalJoinUsPageData ?? this.restaurantAdditionalJoinUsPageData,
        disbursementType: disbursementType ?? this.disbursementType,
        restaurantDisbursementWaitingTime: restaurantDisbursementWaitingTime ?? this.restaurantDisbursementWaitingTime,
        dmDisbursementWaitingTime: dmDisbursementWaitingTime ?? this.dmDisbursementWaitingTime,
        minAmountToPayRestaurant: minAmountToPayRestaurant ?? this.minAmountToPayRestaurant,
        minAmountToPayDm: minAmountToPayDm ?? this.minAmountToPayDm,
        restaurantReviewReply: restaurantReviewReply ?? this.restaurantReviewReply,
        maintenanceModeData: maintenanceModeData ?? this.maintenanceModeData,
        firebaseOtpVerification: firebaseOtpVerification ?? this.firebaseOtpVerification,
        centralizeLogin: centralizeLogin ?? this.centralizeLogin,
        subscriptionBusinessModel: subscriptionBusinessModel ?? this.subscriptionBusinessModel,
        commissionBusinessModel: commissionBusinessModel ?? this.commissionBusinessModel,
        subscriptionDeadlineWarningDays: subscriptionDeadlineWarningDays ?? this.subscriptionDeadlineWarningDays,
        subscriptionDeadlineWarningMessage: subscriptionDeadlineWarningMessage ?? this.subscriptionDeadlineWarningMessage,
        subscriptionFreeTrialDays: subscriptionFreeTrialDays ?? this.subscriptionFreeTrialDays,
        subscriptionFreeTrialType: subscriptionFreeTrialType ?? this.subscriptionFreeTrialType,
        subscriptionFreeTrialStatus: subscriptionFreeTrialStatus ?? this.subscriptionFreeTrialStatus,
        dineInOrderOption: dineInOrderOption ?? this.dineInOrderOption,
        adminFreeDelivery: adminFreeDelivery ?? this.adminFreeDelivery,
        systemTaxType: systemTaxType ?? this.systemTaxType,
        systemTaxIncludeStatus: systemTaxIncludeStatus ?? this.systemTaxIncludeStatus,
        isSmsActive: isSmsActive ?? this.isSmsActive,
        isMailActive: isMailActive ?? this.isMailActive,
      );

  factory ConfigModel.fromJson(Map<String, dynamic> json) => ConfigModel(
    businessName: json["business_name"],
    logo: json["logo"],
    logoFullUrl: json["logo_full_url"],
    address: json["address"],
    phone: json["phone"],
    email: json["email"],
    country: json["country"],
    defaultLocation: json["default_location"] == null ? null : DefaultLocation.fromJson(json["default_location"]),
    currencySymbol: json["currency_symbol"],
    currencySymbolDirection: json["currency_symbol_direction"],
    appMinimumVersionAndroid: json["app_minimum_version_android"],
    appUrlAndroid: json["app_url_android"],
    appMinimumVersionIos: json["app_minimum_version_ios"],
    appUrlIos: json["app_url_ios"],
    customerVerification: json["customer_verification"],
    scheduleOrder: json["schedule_order"],
    orderDeliveryVerification: json["order_delivery_verification"],
    cashOnDelivery: json["cash_on_delivery"],
    digitalPayment: json["digital_payment"],
    demo: json["demo"],
    maintenanceMode: json["maintenance_mode"],
    orderConfirmationModel: json["order_confirmation_model"],
    popularFood: json["popular_food"],
    popularRestaurant: json["popular_restaurant"],
    newRestaurant: json["new_restaurant"],
    mostReviewedFoods: json["most_reviewed_foods"],
    showDmEarning: json["show_dm_earning"],
    canceledByDeliveryman: json["canceled_by_deliveryman"],
    canceledByRestaurant: json["canceled_by_restaurant"],
    timeformat: json["timeformat"],
    language: json["language"] == null ? [] : List<Language>.from(json["language"]!.map((x) => Language.fromJson(x))),
    toggleVegNonVeg: json["toggle_veg_non_veg"],
    toggleDmRegistration: json["toggle_dm_registration"],
    toggleRestaurantRegistration: json["toggle_restaurant_registration"],
    scheduleOrderSlotDuration: json["schedule_order_slot_duration"],
    digitAfterDecimalPoint: json["digit_after_decimal_point"],
    loyaltyPointExchangeRate: json["loyalty_point_exchange_rate"],
    loyaltyPointItemPurchasePoint: json["loyalty_point_item_purchase_point"],
    loyaltyPointStatus: json["loyalty_point_status"],
    minimumPointToTransfer: json["minimum_point_to_transfer"],
    customerWalletStatus: json["customer_wallet_status"],
    refEarningStatus: json["ref_earning_status"],
    refEarningExchangeRate: json["ref_earning_exchange_rate"],
    dmTipsStatus: json["dm_tips_status"],
    theme: json["theme"],
    socialMedia: json["social_media"] == null ? [] : List<SocialMedia>.from(json["social_media"]!.map((x) => SocialMedia.fromJson(x))),
    socialLogin: json["social_login"] == null ? [] : List<SocialLogin>.from(json["social_login"]!.map((x) => SocialLogin.fromJson(x))),
    businessPlan: json["business_plan"] == null ? null : BusinessPlan.fromJson(json["business_plan"]),
    adminCommission: json["admin_commission"],
    footerText: json["footer_text"],
    favIcon: json["fav_icon"],
    favIconFullUrl: json["fav_icon_full_url"],
    refundActiveStatus: json["refund_active_status"],
    freeTrialPeriodStatus: json["free_trial_period_status"],
    freeTrialPeriodData: json["free_trial_period_data"],
    appMinimumVersionAndroidRestaurant: json["app_minimum_version_android_restaurant"],
    appUrlAndroidRestaurant: json["app_url_android_restaurant"],
    appMinimumVersionIosRestaurant: json["app_minimum_version_ios_restaurant"],
    appUrlIosRestaurant: json["app_url_ios_restaurant"],
    appMinimumVersionAndroidDeliveryman: json["app_minimum_version_android_deliveryman"],
    appUrlAndroidDeliveryman: json["app_url_android_deliveryman"],
    appMinimumVersionIosDeliveryman: json["app_minimum_version_ios_deliveryman"],
    appUrlIosDeliveryman: json["app_url_ios_deliveryman"],
    appleLogin: json["apple_login"] == null ? [] : List<AppleLogin>.from(json["apple_login"]!.map((x) => AppleLogin.fromJson(x))),
    orderSubscription: json["order_subscription"],
    cookiesText: json["cookies_text"],
    refundPolicyStatus: json["refund_policy_status"],
    cancellationPolicyStatus: json["cancellation_policy_status"],
    shippingPolicyStatus: json["shipping_policy_status"],
    refundPolicyData: json["refund_policy_data"],
    cancellationPolicyData: json["cancellation_policy_data"],
    shippingPolicyData: json["shipping_policy_data"],
    termsAndConditions: json["terms_and_conditions"],
    privacyPolicy: json["privacy_policy"],
    aboutUs: json["about_us"],
    takeAway: json["take_away"],
    repeatOrderOption: json["repeat_order_option"],
    homeDelivery: json["home_delivery"],
    activePaymentMethodList: json["active_payment_method_list"] == null ? [] : List<ActivePaymentMethodList>.from(json["active_payment_method_list"]!.map((x) => ActivePaymentMethodList.fromJson(x))),
    addFundStatus: json["add_fund_status"],
    partialPaymentStatus: json["partial_payment_status"],
    partialPaymentMethod: json["partial_payment_method"],
    additionalChargeStatus: json["additional_charge_status"],
    additionalChargeName: json["additional_charge_name"],
    additionalCharge: json["additional_charge"],
    dmPictureUploadStatus: json["dm_picture_upload_status"],
    digitalPaymentInfo: json["digital_payment_info"] == null ? null : DigitalPaymentInfo.fromJson(json["digital_payment_info"]),
    bannerData: json["banner_data"] == null ? null : BannerData.fromJson(json["banner_data"]),
    offlinePaymentStatus: json["offline_payment_status"],
    guestCheckoutStatus: json["guest_checkout_status"],
    countryPickerStatus: json["country_picker_status"],
    instantOrder: json["instant_order"],
    extraPackagingCharge: json["extra_packaging_charge"],
    customerDateOrderSratus: json["customer_date_order_sratus"],
    customerOrderDate: json["customer_order_date"],
    deliverymanAdditionalJoinUsPageData: json["deliveryman_additional_join_us_page_data"] == null ? null : AdditionalJoinUsPageData.fromJson(json["deliveryman_additional_join_us_page_data"]),
    restaurantAdditionalJoinUsPageData: json["restaurant_additional_join_us_page_data"] == null ? null : AdditionalJoinUsPageData.fromJson(json["restaurant_additional_join_us_page_data"]),
    disbursementType: json["disbursement_type"],
    restaurantDisbursementWaitingTime: json["restaurant_disbursement_waiting_time"],
    dmDisbursementWaitingTime: json["dm_disbursement_waiting_time"],
    minAmountToPayRestaurant: json["min_amount_to_pay_restaurant"],
    minAmountToPayDm: json["min_amount_to_pay_dm"],
    restaurantReviewReply: json["restaurant_review_reply"],
    maintenanceModeData: json["maintenance_mode_data"],
    firebaseOtpVerification: json["firebase_otp_verification"],
    centralizeLogin: json["centralize_login"] == null ? null : CentralizeLogin.fromJson(json["centralize_login"]),
    subscriptionBusinessModel: json["subscription_business_model"],
    commissionBusinessModel: json["commission_business_model"],
    subscriptionDeadlineWarningDays: json["subscription_deadline_warning_days"],
    subscriptionDeadlineWarningMessage: json["subscription_deadline_warning_message"],
    subscriptionFreeTrialDays: json["subscription_free_trial_days"],
    subscriptionFreeTrialType: json["subscription_free_trial_type"],
    subscriptionFreeTrialStatus: json["subscription_free_trial_status"],
    dineInOrderOption: json["dine_in_order_option"],
    adminFreeDelivery: json["admin_free_delivery"] == null ? null : AdminFreeDelivery.fromJson(json["admin_free_delivery"]),
    systemTaxType: json["system_tax_type"],
    systemTaxIncludeStatus: json["system_tax_include_status"],
    isSmsActive: json["is_sms_active"],
    isMailActive: json["is_mail_active"],
  );

  Map<String, dynamic> toJson() => {
    "business_name": businessName,
    "logo": logo,
    "logo_full_url": logoFullUrl,
    "address": address,
    "phone": phone,
    "email": email,
    "country": country,
    "default_location": defaultLocation?.toJson(),
    "currency_symbol": currencySymbol,
    "currency_symbol_direction": currencySymbolDirection,
    "app_minimum_version_android": appMinimumVersionAndroid,
    "app_url_android": appUrlAndroid,
    "app_minimum_version_ios": appMinimumVersionIos,
    "app_url_ios": appUrlIos,
    "customer_verification": customerVerification,
    "schedule_order": scheduleOrder,
    "order_delivery_verification": orderDeliveryVerification,
    "cash_on_delivery": cashOnDelivery,
    "digital_payment": digitalPayment,
    "demo": demo,
    "maintenance_mode": maintenanceMode,
    "order_confirmation_model": orderConfirmationModel,
    "popular_food": popularFood,
    "popular_restaurant": popularRestaurant,
    "new_restaurant": newRestaurant,
    "most_reviewed_foods": mostReviewedFoods,
    "show_dm_earning": showDmEarning,
    "canceled_by_deliveryman": canceledByDeliveryman,
    "canceled_by_restaurant": canceledByRestaurant,
    "timeformat": timeformat,
    "language": language == null ? [] : List<dynamic>.from(language!.map((x) => x.toJson())),
    "toggle_veg_non_veg": toggleVegNonVeg,
    "toggle_dm_registration": toggleDmRegistration,
    "toggle_restaurant_registration": toggleRestaurantRegistration,
    "schedule_order_slot_duration": scheduleOrderSlotDuration,
    "digit_after_decimal_point": digitAfterDecimalPoint,
    "loyalty_point_exchange_rate": loyaltyPointExchangeRate,
    "loyalty_point_item_purchase_point": loyaltyPointItemPurchasePoint,
    "loyalty_point_status": loyaltyPointStatus,
    "minimum_point_to_transfer": minimumPointToTransfer,
    "customer_wallet_status": customerWalletStatus,
    "ref_earning_status": refEarningStatus,
    "ref_earning_exchange_rate": refEarningExchangeRate,
    "dm_tips_status": dmTipsStatus,
    "theme": theme,
    "social_media": socialMedia == null ? [] : List<dynamic>.from(socialMedia!.map((x) => x.toJson())),
    "social_login": socialLogin == null ? [] : List<dynamic>.from(socialLogin!.map((x) => x.toJson())),
    "business_plan": businessPlan?.toJson(),
    "admin_commission": adminCommission,
    "footer_text": footerText,
    "fav_icon": favIcon,
    "fav_icon_full_url": favIconFullUrl,
    "refund_active_status": refundActiveStatus,
    "free_trial_period_status": freeTrialPeriodStatus,
    "free_trial_period_data": freeTrialPeriodData,
    "app_minimum_version_android_restaurant": appMinimumVersionAndroidRestaurant,
    "app_url_android_restaurant": appUrlAndroidRestaurant,
    "app_minimum_version_ios_restaurant": appMinimumVersionIosRestaurant,
    "app_url_ios_restaurant": appUrlIosRestaurant,
    "app_minimum_version_android_deliveryman": appMinimumVersionAndroidDeliveryman,
    "app_url_android_deliveryman": appUrlAndroidDeliveryman,
    "app_minimum_version_ios_deliveryman": appMinimumVersionIosDeliveryman,
    "app_url_ios_deliveryman": appUrlIosDeliveryman,
    "apple_login": appleLogin == null ? [] : List<dynamic>.from(appleLogin!.map((x) => x.toJson())),
    "order_subscription": orderSubscription,
    "cookies_text": cookiesText,
    "refund_policy_status": refundPolicyStatus,
    "cancellation_policy_status": cancellationPolicyStatus,
    "shipping_policy_status": shippingPolicyStatus,
    "refund_policy_data": refundPolicyData,
    "cancellation_policy_data": cancellationPolicyData,
    "shipping_policy_data": shippingPolicyData,
    "terms_and_conditions": termsAndConditions,
    "privacy_policy": privacyPolicy,
    "about_us": aboutUs,
    "take_away": takeAway,
    "repeat_order_option": repeatOrderOption,
    "home_delivery": homeDelivery,
    "active_payment_method_list": activePaymentMethodList == null ? [] : List<dynamic>.from(activePaymentMethodList!.map((x) => x.toJson())),
    "add_fund_status": addFundStatus,
    "partial_payment_status": partialPaymentStatus,
    "partial_payment_method": partialPaymentMethod,
    "additional_charge_status": additionalChargeStatus,
    "additional_charge_name": additionalChargeName,
    "additional_charge": additionalCharge,
    "dm_picture_upload_status": dmPictureUploadStatus,
    "digital_payment_info": digitalPaymentInfo?.toJson(),
    "banner_data": bannerData?.toJson(),
    "offline_payment_status": offlinePaymentStatus,
    "guest_checkout_status": guestCheckoutStatus,
    "country_picker_status": countryPickerStatus,
    "instant_order": instantOrder,
    "extra_packaging_charge": extraPackagingCharge,
    "customer_date_order_sratus": customerDateOrderSratus,
    "customer_order_date": customerOrderDate,
    "deliveryman_additional_join_us_page_data": deliverymanAdditionalJoinUsPageData?.toJson(),
    "restaurant_additional_join_us_page_data": restaurantAdditionalJoinUsPageData?.toJson(),
    "disbursement_type": disbursementType,
    "restaurant_disbursement_waiting_time": restaurantDisbursementWaitingTime,
    "dm_disbursement_waiting_time": dmDisbursementWaitingTime,
    "min_amount_to_pay_restaurant": minAmountToPayRestaurant,
    "min_amount_to_pay_dm": minAmountToPayDm,
    "restaurant_review_reply": restaurantReviewReply,
    "maintenance_mode_data": maintenanceModeData,
    "firebase_otp_verification": firebaseOtpVerification,
    "centralize_login": centralizeLogin?.toJson(),
    "subscription_business_model": subscriptionBusinessModel,
    "commission_business_model": commissionBusinessModel,
    "subscription_deadline_warning_days": subscriptionDeadlineWarningDays,
    "subscription_deadline_warning_message": subscriptionDeadlineWarningMessage,
    "subscription_free_trial_days": subscriptionFreeTrialDays,
    "subscription_free_trial_type": subscriptionFreeTrialType,
    "subscription_free_trial_status": subscriptionFreeTrialStatus,
    "dine_in_order_option": dineInOrderOption,
    "admin_free_delivery": adminFreeDelivery?.toJson(),
    "system_tax_type": systemTaxType,
    "system_tax_include_status": systemTaxIncludeStatus,
    "is_sms_active": isSmsActive,
    "is_mail_active": isMailActive,
  };
}

class ActivePaymentMethodList {
  final String? gateway;
  final String? gatewayTitle;
  final String? gatewayImage;
  final String? gatewayImageFullUrl;

  ActivePaymentMethodList({
    this.gateway,
    this.gatewayTitle,
    this.gatewayImage,
    this.gatewayImageFullUrl,
  });

  ActivePaymentMethodList copyWith({
    String? gateway,
    String? gatewayTitle,
    String? gatewayImage,
    String? gatewayImageFullUrl,
  }) =>
      ActivePaymentMethodList(
        gateway: gateway ?? this.gateway,
        gatewayTitle: gatewayTitle ?? this.gatewayTitle,
        gatewayImage: gatewayImage ?? this.gatewayImage,
        gatewayImageFullUrl: gatewayImageFullUrl ?? this.gatewayImageFullUrl,
      );

  factory ActivePaymentMethodList.fromJson(Map<String, dynamic> json) => ActivePaymentMethodList(
    gateway: json["gateway"],
    gatewayTitle: json["gateway_title"],
    gatewayImage: json["gateway_image"],
    gatewayImageFullUrl: json["gateway_image_full_url"],
  );

  Map<String, dynamic> toJson() => {
    "gateway": gateway,
    "gateway_title": gatewayTitle,
    "gateway_image": gatewayImage,
    "gateway_image_full_url": gatewayImageFullUrl,
  };
}

class AdminFreeDelivery {
  final bool? status;
  final String? type;
  final int? freeDeliveryOver;
  final int? freeDeliveryDistance;

  AdminFreeDelivery({
    this.status,
    this.type,
    this.freeDeliveryOver,
    this.freeDeliveryDistance,
  });

  AdminFreeDelivery copyWith({
    bool? status,
    String? type,
    int? freeDeliveryOver,
    int? freeDeliveryDistance,
  }) =>
      AdminFreeDelivery(
        status: status ?? this.status,
        type: type ?? this.type,
        freeDeliveryOver: freeDeliveryOver ?? this.freeDeliveryOver,
        freeDeliveryDistance: freeDeliveryDistance ?? this.freeDeliveryDistance,
      );

  factory AdminFreeDelivery.fromJson(Map<String, dynamic> json) => AdminFreeDelivery(
    status: json["status"],
    type: json["type"],
    freeDeliveryOver: json["free_delivery_over"],
    freeDeliveryDistance: json["free_delivery_distance"],
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "type": type,
    "free_delivery_over": freeDeliveryOver,
    "free_delivery_distance": freeDeliveryDistance,
  };
}

class AppleLogin {
  final String? loginMedium;
  final bool? status;
  final String? clientId;

  AppleLogin({
    this.loginMedium,
    this.status,
    this.clientId,
  });

  AppleLogin copyWith({
    String? loginMedium,
    bool? status,
    String? clientId,
  }) =>
      AppleLogin(
        loginMedium: loginMedium ?? this.loginMedium,
        status: status ?? this.status,
        clientId: clientId ?? this.clientId,
      );

  factory AppleLogin.fromJson(Map<String, dynamic> json) => AppleLogin(
    loginMedium: json["login_medium"],
    status: json["status"],
    clientId: json["client_id"],
  );

  Map<String, dynamic> toJson() => {
    "login_medium": loginMedium,
    "status": status,
    "client_id": clientId,
  };
}

class BannerData {
  final String? promotionalBannerImage;
  final String? promotionalBannerTitle;
  final String? promotionalBannerImageFullUrl;

  BannerData({
    this.promotionalBannerImage,
    this.promotionalBannerTitle,
    this.promotionalBannerImageFullUrl,
  });

  BannerData copyWith({
    String? promotionalBannerImage,
    String? promotionalBannerTitle,
    String? promotionalBannerImageFullUrl,
  }) =>
      BannerData(
        promotionalBannerImage: promotionalBannerImage ?? this.promotionalBannerImage,
        promotionalBannerTitle: promotionalBannerTitle ?? this.promotionalBannerTitle,
        promotionalBannerImageFullUrl: promotionalBannerImageFullUrl ?? this.promotionalBannerImageFullUrl,
      );

  factory BannerData.fromJson(Map<String, dynamic> json) => BannerData(
    promotionalBannerImage: json["promotional_banner_image"],
    promotionalBannerTitle: json["promotional_banner_title"],
    promotionalBannerImageFullUrl: json["promotional_banner_image_full_url"],
  );

  Map<String, dynamic> toJson() => {
    "promotional_banner_image": promotionalBannerImage,
    "promotional_banner_title": promotionalBannerTitle,
    "promotional_banner_image_full_url": promotionalBannerImageFullUrl,
  };
}

class BusinessPlan {
  final int? commission;
  final int? subscription;

  BusinessPlan({
    this.commission,
    this.subscription,
  });

  BusinessPlan copyWith({
    int? commission,
    int? subscription,
  }) =>
      BusinessPlan(
        commission: commission ?? this.commission,
        subscription: subscription ?? this.subscription,
      );

  factory BusinessPlan.fromJson(Map<String, dynamic> json) => BusinessPlan(
    commission: json["commission"],
    subscription: json["subscription"],
  );

  Map<String, dynamic> toJson() => {
    "commission": commission,
    "subscription": subscription,
  };
}

class CentralizeLogin {
  final int? manualLoginStatus;
  final int? otpLoginStatus;
  final int? socialLoginStatus;
  final int? googleLoginStatus;
  final int? facebookLoginStatus;
  final int? appleLoginStatus;
  final int? emailVerificationStatus;
  final int? phoneVerificationStatus;

  CentralizeLogin({
    this.manualLoginStatus,
    this.otpLoginStatus,
    this.socialLoginStatus,
    this.googleLoginStatus,
    this.facebookLoginStatus,
    this.appleLoginStatus,
    this.emailVerificationStatus,
    this.phoneVerificationStatus,
  });

  CentralizeLogin copyWith({
    int? manualLoginStatus,
    int? otpLoginStatus,
    int? socialLoginStatus,
    int? googleLoginStatus,
    int? facebookLoginStatus,
    int? appleLoginStatus,
    int? emailVerificationStatus,
    int? phoneVerificationStatus,
  }) =>
      CentralizeLogin(
        manualLoginStatus: manualLoginStatus ?? this.manualLoginStatus,
        otpLoginStatus: otpLoginStatus ?? this.otpLoginStatus,
        socialLoginStatus: socialLoginStatus ?? this.socialLoginStatus,
        googleLoginStatus: googleLoginStatus ?? this.googleLoginStatus,
        facebookLoginStatus: facebookLoginStatus ?? this.facebookLoginStatus,
        appleLoginStatus: appleLoginStatus ?? this.appleLoginStatus,
        emailVerificationStatus: emailVerificationStatus ?? this.emailVerificationStatus,
        phoneVerificationStatus: phoneVerificationStatus ?? this.phoneVerificationStatus,
      );

  factory CentralizeLogin.fromJson(Map<String, dynamic> json) => CentralizeLogin(
    manualLoginStatus: json["manual_login_status"],
    otpLoginStatus: json["otp_login_status"],
    socialLoginStatus: json["social_login_status"],
    googleLoginStatus: json["google_login_status"],
    facebookLoginStatus: json["facebook_login_status"],
    appleLoginStatus: json["apple_login_status"],
    emailVerificationStatus: json["email_verification_status"],
    phoneVerificationStatus: json["phone_verification_status"],
  );

  Map<String, dynamic> toJson() => {
    "manual_login_status": manualLoginStatus,
    "otp_login_status": otpLoginStatus,
    "social_login_status": socialLoginStatus,
    "google_login_status": googleLoginStatus,
    "facebook_login_status": facebookLoginStatus,
    "apple_login_status": appleLoginStatus,
    "email_verification_status": emailVerificationStatus,
    "phone_verification_status": phoneVerificationStatus,
  };
}

class DefaultLocation {
  final String? lat;
  final String? lng;

  DefaultLocation({
    this.lat,
    this.lng,
  });

  DefaultLocation copyWith({
    String? lat,
    String? lng,
  }) =>
      DefaultLocation(
        lat: lat ?? this.lat,
        lng: lng ?? this.lng,
      );

  factory DefaultLocation.fromJson(Map<String, dynamic> json) => DefaultLocation(
    lat: json["lat"],
    lng: json["lng"],
  );

  Map<String, dynamic> toJson() => {
    "lat": lat,
    "lng": lng,
  };
}

class AdditionalJoinUsPageData {
  final List<Datum>? data;

  AdditionalJoinUsPageData({
    this.data,
  });

  AdditionalJoinUsPageData copyWith({
    List<Datum>? data,
  }) =>
      AdditionalJoinUsPageData(
        data: data ?? this.data,
      );

  factory AdditionalJoinUsPageData.fromJson(Map<String, dynamic> json) => AdditionalJoinUsPageData(
    data: json["data"] == null ? [] : List<Datum>.from(json["data"]!.map((x) => Datum.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "data": data == null ? [] : List<dynamic>.from(data!.map((x) => x.toJson())),
  };
}

class Datum {
  final String? fieldType;
  final String? inputData;
  final dynamic checkData;
  final MediaData? mediaData;
  final String? placeholderData;
  final int? isRequired;

  Datum({
    this.fieldType,
    this.inputData,
    this.checkData,
    this.mediaData,
    this.placeholderData,
    this.isRequired,
  });

  Datum copyWith({
    String? fieldType,
    String? inputData,
    dynamic checkData,
    MediaData? mediaData,
    String? placeholderData,
    int? isRequired,
  }) =>
      Datum(
        fieldType: fieldType ?? this.fieldType,
        inputData: inputData ?? this.inputData,
        checkData: checkData ?? this.checkData,
        mediaData: mediaData ?? this.mediaData,
        placeholderData: placeholderData ?? this.placeholderData,
        isRequired: isRequired ?? this.isRequired,
      );

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
    fieldType: json["field_type"],
    inputData: json["input_data"],
    checkData: json["check_data"],
    mediaData: json["media_data"] == null ? null : MediaData.fromJson(json["media_data"]),
    placeholderData: json["placeholder_data"],
    isRequired: json["is_required"],
  );

  Map<String, dynamic> toJson() => {
    "field_type": fieldType,
    "input_data": inputData,
    "check_data": checkData,
    "media_data": mediaData?.toJson(),
    "placeholder_data": placeholderData,
    "is_required": isRequired,
  };
}

class MediaData {
  final int? uploadMultipleFiles;
  final int? image;
  final int? pdf;
  final int? docs;

  MediaData({
    this.uploadMultipleFiles,
    this.image,
    this.pdf,
    this.docs,
  });

  MediaData copyWith({
    int? uploadMultipleFiles,
    int? image,
    int? pdf,
    int? docs,
  }) =>
      MediaData(
        uploadMultipleFiles: uploadMultipleFiles ?? this.uploadMultipleFiles,
        image: image ?? this.image,
        pdf: pdf ?? this.pdf,
        docs: docs ?? this.docs,
      );

  factory MediaData.fromJson(Map<String, dynamic> json) => MediaData(
    uploadMultipleFiles: json["upload_multiple_files"],
    image: json["image"],
    pdf: json["pdf"],
    docs: json["docs"],
  );

  Map<String, dynamic> toJson() => {
    "upload_multiple_files": uploadMultipleFiles,
    "image": image,
    "pdf": pdf,
    "docs": docs,
  };
}

class DigitalPaymentInfo {
  final bool? digitalPayment;
  final bool? pluginPaymentGateways;
  final bool? defaultPaymentGateways;

  DigitalPaymentInfo({
    this.digitalPayment,
    this.pluginPaymentGateways,
    this.defaultPaymentGateways,
  });

  DigitalPaymentInfo copyWith({
    bool? digitalPayment,
    bool? pluginPaymentGateways,
    bool? defaultPaymentGateways,
  }) =>
      DigitalPaymentInfo(
        digitalPayment: digitalPayment ?? this.digitalPayment,
        pluginPaymentGateways: pluginPaymentGateways ?? this.pluginPaymentGateways,
        defaultPaymentGateways: defaultPaymentGateways ?? this.defaultPaymentGateways,
      );

  factory DigitalPaymentInfo.fromJson(Map<String, dynamic> json) => DigitalPaymentInfo(
    digitalPayment: json["digital_payment"],
    pluginPaymentGateways: json["plugin_payment_gateways"],
    defaultPaymentGateways: json["default_payment_gateways"],
  );

  Map<String, dynamic> toJson() => {
    "digital_payment": digitalPayment,
    "plugin_payment_gateways": pluginPaymentGateways,
    "default_payment_gateways": defaultPaymentGateways,
  };
}

class Language {
  final String? key;
  final String? value;

  Language({
    this.key,
    this.value,
  });

  Language copyWith({
    String? key,
    String? value,
  }) =>
      Language(
        key: key ?? this.key,
        value: value ?? this.value,
      );

  factory Language.fromJson(Map<String, dynamic> json) => Language(
    key: json["key"],
    value: json["value"],
  );

  Map<String, dynamic> toJson() => {
    "key": key,
    "value": value,
  };
}

class SocialLogin {
  final String? loginMedium;
  final bool? status;

  SocialLogin({
    this.loginMedium,
    this.status,
  });

  SocialLogin copyWith({
    String? loginMedium,
    bool? status,
  }) =>
      SocialLogin(
        loginMedium: loginMedium ?? this.loginMedium,
        status: status ?? this.status,
      );

  factory SocialLogin.fromJson(Map<String, dynamic> json) => SocialLogin(
    loginMedium: json["login_medium"],
    status: json["status"],
  );

  Map<String, dynamic> toJson() => {
    "login_medium": loginMedium,
    "status": status,
  };
}

class SocialMedia {
  final int? id;
  final String? name;
  final String? link;
  final int? status;
  final dynamic createdAt;
  final dynamic updatedAt;

  SocialMedia({
    this.id,
    this.name,
    this.link,
    this.status,
    this.createdAt,
    this.updatedAt,
  });

  SocialMedia copyWith({
    int? id,
    String? name,
    String? link,
    int? status,
    dynamic createdAt,
    dynamic updatedAt,
  }) =>
      SocialMedia(
        id: id ?? this.id,
        name: name ?? this.name,
        link: link ?? this.link,
        status: status ?? this.status,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
      );

  factory SocialMedia.fromJson(Map<String, dynamic> json) => SocialMedia(
    id: json["id"],
    name: json["name"],
    link: json["link"],
    status: json["status"],
    createdAt: json["created_at"],
    updatedAt: json["updated_at"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "link": link,
    "status": status,
    "created_at": createdAt,
    "updated_at": updatedAt,
  };
}
