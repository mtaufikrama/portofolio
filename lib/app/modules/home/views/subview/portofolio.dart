import 'package:portofolio/app/data/dll/font.dart';
import 'package:portofolio/app/data/dll/language.dart';
import 'package:portofolio/app/data/dll/responsive.dart';
import 'package:portofolio/app/data/dll/services.dart';
import 'package:portofolio/app/data/object_class/porto_class.dart';
import 'package:portofolio/app/data/screen/inti_apps.dart';
import 'package:portofolio/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Container portofolio(BuildContext context) {
  double height = getHeight(context) / 2;
  return Container(
    height: height <= 250 ? 250 : height,
    decoration: const BoxDecoration(color: Color.fromARGB(255, 103, 80, 164)),
    child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          teksLanguage(
            isi['portofolio']!.title.toUpperCase(),
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
          SizedBox(
            height: 170,
            child: ListView.builder(
              itemCount: (isi['portofolio']!.subtitle as List).length,
              physics: const BouncingScrollPhysics(),
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                Portfolio porto = isi['portofolio']!.subtitle![index];
                return Padding(
                  padding: const EdgeInsets.all(10),
                  child: SizedBox(
                    width: 250,
                    child: InkWell(
                      onTap: () => Get.toNamed(Routes.PORTFOLIO, parameters: {
                        'id': index.toString(),
                        'lang': Get.parameters['lang'] ?? 'en',
                      }),
                      child: AspectRatio(
                        aspectRatio: 16 / 9,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10.0),
                          child: Stack(
                            fit: StackFit.expand,
                            children: [
                              Container(
                                color: porto.primaryColor,
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 20),
                                  child: Image.asset(
                                    porto.frame,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                              Container(
                                decoration: const BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [Colors.black, Colors.transparent],
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                  ),
                                ),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    ListTile(
                                      leading: CircleAvatar(
                                        backgroundImage: AssetImage(
                                          porto.logo,
                                        ),
                                      ),
                                      subtitle: teksLanguage(
                                        porto.deskripsi,
                                        kodeBahasa:
                                            Get.parameters['lang'] ?? 'en',
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: Font.regular(
                                          color: Colors.white,
                                          fontSize: responsiveDouble(
                                            context,
                                            mobile: 8.0,
                                            desktop: 12.0,
                                          ),
                                        ),
                                      ),
                                      title: teksLanguage(
                                        porto.nama,
                                        kodeBahasa:
                                            Get.parameters['lang'] ?? 'en',
                                        style: Font.regular(
                                          color: Colors.white,
                                          fontSize: responsiveDouble(
                                            context,
                                            mobile: 10.0,
                                            desktop: 14.0,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          decoration: const BoxDecoration(
                                            color: Color.fromARGB(
                                              207,
                                              255,
                                              255,
                                              255,
                                            ),
                                            borderRadius: BorderRadius.only(
                                              topRight: Radius.circular(
                                                10,
                                              ),
                                            ),
                                          ),
                                          child: Row(
                                            children: [
                                              IconButton(
                                                tooltip: 'android',
                                                onPressed: () =>
                                                    launcher(porto.urlAndroid),
                                                icon: const Icon(
                                                  Icons.android,
                                                  color: Colors.green,
                                                  size: 24.0,
                                                ),
                                              ),
                                              IconButton(
                                                tooltip: 'website',
                                                onPressed: () =>
                                                    launcher(porto.urlWebsite),
                                                icon: const Icon(
                                                  Icons.web_outlined,
                                                  color: Colors.green,
                                                  size: 24.0,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        const Spacer(),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    ),
  );
}
