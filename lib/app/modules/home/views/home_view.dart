import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portofolio/app/modules/home/controllers/home_controller.dart';
import 'package:portofolio/app/modules/home/views/subview/appbar.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ListView(
            physics: const BouncingScrollPhysics(),
            controller: controller.autoScrollController,
            children: List.generate(
              controller.listWidget.length,
              (index) => AutoScrollTag(
                key: ValueKey<int>(index),
                controller: controller.autoScrollController,
                index: index,
                child: controller.listWidget[index],
              ),
            ),
          ),
          const AppBarButton(),
        ],
      ),
    );
  }
}
