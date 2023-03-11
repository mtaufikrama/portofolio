import 'package:get/get.dart';
import 'package:url_strategy/url_strategy.dart';

class PortfolioController extends GetxController {
  String id = '0';
  String lang = Get.deviceLocale!.languageCode;

  @override
  void onInit() {
    setPathUrlStrategy();
    id = Get.parameters['id'] ?? '0';
    lang = Get.parameters['lang'] ?? Get.deviceLocale!.languageCode;
    super.onInit();
  }
}
