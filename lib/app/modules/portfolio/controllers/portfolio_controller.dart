import 'package:get/get.dart';

class PortfolioController extends GetxController {
  final String id = Get.parameters['id'] ?? '0';
  final String lang = Get.parameters['lang'] ??
      (Get.deviceLocale != null ? Get.deviceLocale!.languageCode : 'en');
}
