import 'package:flutter/foundation.dart';
import 'package:get/state_manager.dart';
import '../../../core/services/api/api_client.dart';
import '../../../core/services/api/api_retry_manager.dart';
import '../../../core/utils/_constants.dart';

class HomeController extends GetxController {
  ApiClient apiClient;

  HomeController({
    required this.apiClient,
  });

  @override
  onInit() {
    super.onInit();
    fetchBanner();
  }

  Future<void> refreshData() async {
    await fetchBanner(forceRefresh: true);
  }

  var currentPage = 0.obs;

  Future<void> fetchBanner({bool forceRefresh = false}) async {
    try {
      final response = await apiClient.getData(
        Constants.bannerUrl,
        retryCallback: () => apiRetryManager.addRequest(fetchBanner),
      );
      if (response.statusCode == 200) {
        // HotMatchModel hotMatchModel = await compute(
        //   hotMatchModelFromJson,
        //   response.body,
        // );

      }
    } catch (_) {
      apiRetryManager.addRequest(fetchBanner);
    }
  }


}
