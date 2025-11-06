import 'dart:convert';

import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/cupertino.dart' hide Banner;
import 'package:flutter/foundation.dart';
import 'package:geocoding/geocoding.dart';
import 'package:get/state_manager.dart';
import 'package:http/http.dart' as http;

import '../../../core/services/api/api_client.dart';
import '../../../core/services/api/api_retry_manager.dart';
import '../../../core/utils/_constants.dart';
import '../../../core/utils/session_manager.dart';
import '../../shared/model/config_model.dart';
import '../../shared/model/restaurant.dart';
import '../models/banner_model.dart';
import '../models/campaigns_item_model.dart';
import '../models/categories_model.dart';
import '../models/popular_product_model.dart';
import '../models/restaurants_model.dart';

class HomeController extends GetxController {
  final ApiClient apiClient;

  HomeController({required this.apiClient});

  CarouselSliderController carouselController = CarouselSliderController();
  var bannerCurrentPage = 0.obs;

  var config = Rxn<ConfigModel>();
  var banners = <Banner>[].obs;
  var categories = <CategoriesModel>[].obs;
  var popularFoods = <Product>[].obs;
  var campaigns = <CampaignsItemModel>[].obs;
  var restaurants = <Restaurant>[].obs;

  var isConfigLoading = false.obs;
  var isBannerLoading = false.obs;
  var isCategoriesLoading = false.obs;
  var isPopularFoodsLoading = false.obs;
  var isCampaignsLoading = false.obs;
  var isRestaurantLoading = false.obs;

  var restaurantOffset = 1;
  final int restaurantLimit = 10;
  var hasMoreRestaurants = true.obs;

  // Store final address
  RxString currentAddress = "Loading...".obs;

  @override
  void onInit() {
    super.onInit();
    initHomeData();
    scrollController.addListener(_onScroll);
  }

  Future<void> initHomeData({bool isReload = false}) async {
    if (!isReload) {
      fetchConfig();
      fetchBanners();
      fetchCategories();
      fetchPopularFoods();
      fetchCampaigns();
      fetchRestaurants(reset: true);
    } else {
      await fetchBanners();
      await fetchCategories();
      await fetchPopularFoods();
      await fetchCampaigns();
      await fetchRestaurants(reset: true);
    }
  }

  Future<void> fetchConfig() async {
    try {
      isConfigLoading(true);

      final response = await apiClient.getData(
        Constants.configUrl,
        retryCallback: () => apiRetryManager.addRequest(fetchConfig),
      );

      if (response.statusCode == 200) {
        final data = await compute(configModelFromJson, response.body);
        config.value = data;
        _extractConfigValues();
      }
    } catch (_) {
      apiRetryManager.addRequest(fetchConfig);
    } finally {
      isConfigLoading(false);
    }
  }

  void _extractConfigValues() {
    if (config.value == null) return;

    ConfigModel cfg = config.value!;

    double defaultLat = double.tryParse(cfg.defaultLocation?.lat ?? "0") ?? 0.0;
    double defaultLng = double.tryParse(cfg.defaultLocation?.lng ?? "0") ?? 0.0;
    SessionManager.setValue(kCurrencySymbol, cfg.currencySymbol ?? "\$");
    SessionManager.setValue(
      kCurrencyDirection,
      cfg.currencySymbolDirection ?? "left",
    );

    fetchAddressFromLatLng(lat: defaultLat, lng: defaultLng);
  }

  Future<void> fetchAddressFromLatLng({
    required double lat,
    required double lng,
  }) async {
    if (kIsWeb) {
      try {
        currentAddress.value = await reverseGeocodeWeb(lat, lng);
      } catch (_) {
        currentAddress.value = "Unknown Location";
      }
      return;
    }

    try {
      final placemarks = await placemarkFromCoordinates(lat, lng);
      if (placemarks.isNotEmpty) {
        final p = placemarks.first;
        currentAddress.value = "${p.street}, ${p.locality}, ${p.country}";
      }
    } catch (_) {
      currentAddress.value = "Unknown Location";
    }
  }

  Future<String> reverseGeocodeWeb(double lat, double lng) async {
    final url = Uri.parse(
      "https://nominatim.openstreetmap.org/reverse?format=jsonv2&lat=$lat&lon=$lng",
    );

    final response = await http.get(
      url,
      headers: {
        "User-Agent": "Mozilla/5.0 (Flutter App) stackfood-sample-task",
      },
    );

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      return data["display_name"] ?? "Unknown Location";
    }

    return "Unknown Location";
  }

  Future<void> fetchBanners() async {
    try {
      isBannerLoading(true);

      final response = await apiClient.getData(
        Constants.bannerUrl,
        retryCallback: () => apiRetryManager.addRequest(fetchBanners),
      );

      if (response.statusCode == 200) {
        BannerModel data = await compute(bannerModelFromJson, response.body);
        banners.assignAll(data.banners ?? []);
      }
    } catch (_) {
      apiRetryManager.addRequest(fetchBanners);
    } finally {
      isBannerLoading(false);
    }
  }

  Future<void> fetchCategories() async {
    try {
      isCategoriesLoading(true);

      final response = await apiClient.getData(
        Constants.categoriesUrl,
        retryCallback: () => apiRetryManager.addRequest(fetchCategories),
      );

      if (response.statusCode == 200) {
        final data = await compute(categoriesModelFromJson, response.body);
        categories.assignAll(data);
      }
    } catch (_) {
      apiRetryManager.addRequest(fetchCategories);
    } finally {
      isCategoriesLoading(false);
    }
  }

  Future<void> fetchPopularFoods() async {
    try {
      isPopularFoodsLoading(true);

      final response = await apiClient.getData(
        Constants.popularProductUrl,
        retryCallback: () => apiRetryManager.addRequest(fetchPopularFoods),
      );

      if (response.statusCode == 200) {
        PopularProductModel data = await compute(
          popularProductModelFromJson,
          response.body,
        );
        popularFoods.assignAll(data.products ?? []);
      }
    } catch (_) {
      apiRetryManager.addRequest(fetchPopularFoods);
    } finally {
      isPopularFoodsLoading(false);
    }
  }

  Future<void> fetchCampaigns() async {
    try {
      isCampaignsLoading(true);

      final response = await apiClient.getData(
        Constants.campaignsUrl,
        retryCallback: () => apiRetryManager.addRequest(fetchCampaigns),
      );

      if (response.statusCode == 200) {
        final data = await compute(campaignsItemModelFromJson, response.body);
        campaigns.assignAll(data);
      }
    } catch (_) {
      apiRetryManager.addRequest(fetchCampaigns);
    } finally {
      isCampaignsLoading(false);
    }
  }

  Future<void> fetchRestaurants({bool reset = false}) async {
    if (isRestaurantLoading.value) return;

    try {
      if (reset) {
        restaurantOffset = 1;
        hasMoreRestaurants(true);
        restaurants.clear();
      }

      if (!hasMoreRestaurants.value) return;

      isRestaurantLoading(true);

      final response = await apiClient.getData(
        Constants.allRestaurantsUrl,
        query: {
          'offset': restaurantOffset.toString(),
          'limit': restaurantLimit.toString(),
        },
        retryCallback: () => apiRetryManager.addRequest(fetchRestaurants),
      );

      if (response.statusCode == 200) {
        RestaurantsModel data = await compute(
          restaurantsModelFromJson,
          response.body,
        );

        List<Restaurant> newList = data.restaurants ?? [];

        restaurants.addAll(newList);
        int totalSize = data.totalSize ?? 0;
        if (restaurants.length >= totalSize) {
          hasMoreRestaurants(false);
        } else {
          restaurantOffset++;
        }
      }
    } catch (_) {
      apiRetryManager.addRequest(fetchRestaurants);
    } finally {
      isRestaurantLoading(false);
    }
  }

  ScrollController scrollController = ScrollController();

  DateTime? lastCallTime;

  void _onScroll() {
    if (!hasMoreRestaurants.value) return;
    if (isRestaurantLoading.value) return;

    final now = DateTime.now();
    if (lastCallTime != null && now.difference(lastCallTime!).inSeconds < 2) {
      return;
    }

    if (scrollController.position.pixels >=
        scrollController.position.maxScrollExtent - 300) {
      lastCallTime = now;
      fetchRestaurants();
    }
  }

  @override
  void onClose() {
    scrollController.dispose();
    super.onClose();
  }
}
