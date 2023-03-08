import 'package:portofolio/app/data/dll/font.dart';
import 'package:portofolio/app/data/dll/language.dart';
import 'package:portofolio/app/data/dll/responsive.dart';
import 'package:portofolio/app/data/dll/services.dart';
import 'package:portofolio/app/data/screen/inti_apps.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Container aboutMe(BuildContext context) {
  double height = getHeight(context) / 2;
  return Container(
    padding: EdgeInsets.symmetric(horizontal: getWidth(context) / 20),
    height: height <= 250 ? 250 : height,
    decoration: const BoxDecoration(
      color: Colors.white,
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        teksLanguage(
          (isi['about']!.title).toUpperCase(),
          kodeBahasa: Get.parameters['lang'] ?? 'en',
          style: Font.regular(
            fontSize: responsiveDouble(
              context,
              mobile: 20.0,
              desktop: 30.0,
            ),
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 50,
          ),
          child: Divider(),
        ),
        teksLanguage(
          isi['about']!.subtitle,
          kodeBahasa: Get.parameters['lang'] ?? 'en',
          style: Font.regular(
            fontSize: responsiveDouble(
              context,
              mobile: 15.0,
              desktop: 20.0,
            ),
          ),
          textAlign: TextAlign.center,
        ),
      ],
    ),
  );
}
