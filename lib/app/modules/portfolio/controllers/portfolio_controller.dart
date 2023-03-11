import 'package:get/get.dart';

class PortfolioController extends GetxController {
  String id = '0';
  String lang = '';

  @override
  void onInit() {
    id = Get.parameters['id'] ?? '0';
    lang = Get.parameters['lang'] ?? 'en';
    super.onInit();
  }
}
