import 'package:get/instance_manager.dart';

import '../../core/services/api/api_client.dart';
import '../../core/utils/_constants.dart';
import '../../features/home/controllers/home_controller.dart';
import '../../features/home/controllers/navigation_controller.dart';

class InitialBinding extends Bindings {
  @override
  void dependencies() {
    final apiClient = ApiClient(
      appBaseUrl: '${Constants.baseUrl}${Constants.subUrl}',
    );
    Get.put<ApiClient>(apiClient, permanent: true);
    Get.lazyPut(() => NavigationController(), fenix: true);
    Get.lazyPut(() => HomeController(apiClient: apiClient), fenix: true);
  }
}
