import 'package:portofolio/app/data/dll/language.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import '../../../data/dll/font.dart';
import '../../../data/dll/responsive.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ListView(
            controller: controller.autoScrollController,
            children: List.generate(
              controller.listWidget(context).length,
              (index) => AutoScrollTag(
                key: ValueKey<int>(index),
                controller: controller.autoScrollController,
                index: index,
                child: controller.listWidget(context)[index],
              ),
            ),
          ),
          appBarButton(context),
        ],
      ),
    );
  }

  Align appBarButton(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: controller.buttonAppBar
              .map((e) => Padding(
                  padding: const EdgeInsets.all(5),
                  child: responsiveWidget(
                    context,
                    mobile: Tooltip(
                      waitDuration: const Duration(milliseconds: 300),
                      message: e['label'] as String,
                      child: ElevatedButton(
                        onPressed: () async =>
                            await controller.scrollIndex(e['index']),
                        child: e['icon'] as ImageIcon,
                      ),
                    ),
                    desktop: ElevatedButton.icon(
                      onPressed: () async =>
                          await controller.scrollIndex(e['index'] as int),
                      icon: e['icon'] as ImageIcon,
                      label: teksLanguage(
                        e['label'] as String,
                        kodeBahasa: Get.parameters['lang'] ?? 'en',
                        style: Font.regular(
                          fontSize: 17.0,
                        ),
                      ),
                    ),
                    tablet: ElevatedButton.icon(
                      onPressed: () async =>
                          await controller.scrollIndex(e['index'] as int),
                      icon: e['icon'] as ImageIcon,
                      label: Text(
                        e['label'] as String,
                        style: Font.regular(
                          fontSize: 13.0,
                        ),
                      ),
                    ),
                  )))
              .toList(),
        ),
      ),
    );
  }
}
