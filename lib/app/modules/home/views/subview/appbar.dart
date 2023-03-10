import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:portofolio/app/data/dll/font.dart';
import 'package:portofolio/app/data/dll/language.dart';
import 'package:portofolio/app/data/dll/responsive.dart';
import 'package:portofolio/app/modules/home/controllers/home_controller.dart';

class AppBarButton extends StatelessWidget {
  const AppBarButton({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
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
