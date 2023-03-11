import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portofolio/app/data/dll/services.dart';
import 'package:portofolio/app/data/object_class/porto_class.dart';
import 'package:portofolio/app/modules/home/controllers/home_controller.dart';

class IconDevices extends GetView<HomeController> {
  const IconDevices({
    super.key,
    required this.porto,
  });

  final Portfolio porto;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        porto.urlAndroid.isEmpty
            ? Container()
            : IconButton(
                tooltip: 'android',
                onPressed: () => launcher(
                  porto.urlAndroid,
                ),
                icon: Icon(
                  Icons.android,
                  color: porto.primaryColor,
                  size: 24.0,
                ),
              ),
        porto.urlWebsite.isEmpty
            ? Container()
            : IconButton(
                tooltip: 'website',
                onPressed: () => launcher(porto.urlWebsite),
                icon: Icon(
                  Icons.web_outlined,
                  color: porto.primaryColor,
                  size: 24.0,
                ),
              ),
      ],
    );
  }
}
