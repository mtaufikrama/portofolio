import 'package:dismissible_page/dismissible_page.dart';
import 'package:portofolio/app/data/dll/responsive.dart';
import 'package:portofolio/app/data/object_class/porto_class.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ImagepageView extends GetView {
  const ImagepageView({
    Key? key,
    required this.team,
    required this.tagName,
  }) : super(key: key);

  final Team team;
  final String tagName;
  @override
  Widget build(BuildContext context) {
    return DismissiblePage(
      onDismissed: () => Get.back(),
      startingOpacity: 0.7,
      isFullScreen: false,
      backgroundColor: Colors.black,
      direction: DismissiblePageDismissDirection.multi,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: responsiveWidget(
            context,
            mobile: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Hero(
                  tag: tagName,
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: Image.asset(
                      team.image,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () async => Get.back(),
                  icon: const Icon(
                    Icons.cancel_outlined,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            desktop: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.8,
                  child: Hero(
                    tag: tagName,
                    child: Image.asset(
                      team.image,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () async => Get.back(),
                  icon: const Icon(
                    Icons.cancel_outlined,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
