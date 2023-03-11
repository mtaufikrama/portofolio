import 'package:get/get.dart';

class PortfolioController extends GetxController {
  String id = '0';
  String lang = Get.deviceLocale!.languageCode;

  @override
  void onInit() {
    id = Get.parameters['id'] ?? '0';
    lang = Get.parameters['lang'] ?? Get.deviceLocale!.languageCode;
    super.onInit();
  }
}
