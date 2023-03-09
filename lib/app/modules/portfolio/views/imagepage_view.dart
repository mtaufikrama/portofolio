import 'package:dismissible_page/dismissible_page.dart';
import 'package:portofolio/app/data/dll/font.dart';
import 'package:portofolio/app/data/dll/responsive.dart';
import 'package:portofolio/app/data/object_class/porto_class.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ImagepageView extends GetView {
  const ImagepageView({
    Key? key,
    required this.team,
    required this.tagName,
    required this.color,
  }) : super(key: key);

  final Team team;
  final String tagName;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return DismissiblePage(
      onDismissed: () => Get.back(),
      startingOpacity: 0.7,
      isFullScreen: false,
      backgroundColor: color,
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
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: Image.asset(
                      team.image,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                Text(
                  team.nama.toUpperCase(),
                  style: Font.regular(
                    fontSize: 35,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
                Text(
                  team.sebagai.toUpperCase(),
                  style: Font.regular(
                    fontSize: 35,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
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
                  height: MediaQuery.of(context).size.height * 0.5,
                  child: Hero(
                    tag: tagName,
                    child: Image.asset(
                      team.image,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 5.0,
                    horizontal: 20.0,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      Text(
                        team.nama.toUpperCase(),
                        textAlign: TextAlign.center,
                        style: Font.regular(
                          fontSize: responsiveDouble(
                            context,
                            mobile: 20.0,
                            desktop: 30.0,
                          ),
                          color: color,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        team.sebagai.toUpperCase(),
                        textAlign: TextAlign.center,
                        style: Font.regular(
                          fontSize: responsiveDouble(
                            context,
                            mobile: 10.0,
                            desktop: 20.0,
                          ),
                          color: color,
                        ),
                      ),
                    ],
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
