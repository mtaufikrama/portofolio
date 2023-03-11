import 'package:dismissible_page/dismissible_page.dart';
import 'package:portofolio/app/data/dll/font.dart';
import 'package:portofolio/app/data/dll/responsive.dart';
import 'package:portofolio/app/data/object_class/porto_class.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portofolio/app/modules/portfolio/controllers/portfolio_controller.dart';

class ImagepageView extends GetView<PortfolioController> {
  const ImagepageView({
    Key? key,
    this.team,
    this.image,
    required this.tagName,
    required this.color,
  }) : super(key: key);

  final Team? team;
  final String? image;
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Hero(
                tag: tagName,
                child: SizedBox(
                  width: MediaQuery.of(context).size.width *
                      (team != null ? 0.5 : 0.8),
                  height: MediaQuery.of(context).size.height *
                      (team != null ? 0.5 : 0.8),
                  child: Image.asset(
                    (team != null ? team!.image : image!),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              team != null
                  ? Container(
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
                            team!.nama.toUpperCase(),
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
                            team!.sebagai.toUpperCase(),
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
                    )
                  : Container(),
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
    );
  }
}
