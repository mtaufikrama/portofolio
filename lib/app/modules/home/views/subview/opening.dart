import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:portofolio/app/data/dll/assets.dart';
import 'package:portofolio/app/data/dll/font.dart';
import 'package:portofolio/app/data/dll/language.dart';
import 'package:portofolio/app/data/dll/responsive.dart';
import 'package:portofolio/app/data/dll/services.dart';
import 'package:portofolio/app/data/screen/kontak_data.dart';
import 'package:portofolio/app/modules/home/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

SizedBox openingPage(BuildContext context) {
  var controller = Get.put(HomeController());
  double height = getHeight(context);
  return SizedBox(
    width: getWidth(context),
    height: height <= 500 ? 500 : height,
    child: Stack(
      children: [
        ClipRRect(
          child: Lottie.asset(
            'assets/lottie/bg.json',
            width: getWidth(context),
            height: height <= 500 ? 500 : height,
            fit: BoxFit.fill,
          ),
        ),
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                Foto.fotoprofil,
                width: responsiveDouble(
                  context,
                  mobile: 225.0,
                  desktop: 300.0,
                ),
                fit: BoxFit.fill,
              ),
              const SizedBox(
                height: 15,
              ),
              ListView.builder(
                addAutomaticKeepAlives: false,
                itemCount: controller.bio(context).length,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (_, index) {
                  return Center(
                    child: AnimatedTextKit(
                      isRepeatingAnimation: false,
                      animatedTexts: [
                        TypewriterAnimatedText(
                          controller.bio(context)[index]['nama'] as String,
                          curve: Curves.linear,
                          textAlign: TextAlign.center,
                          speed: const Duration(milliseconds: 150),
                          textStyle: controller.bio(context)[index]['style']
                              as TextStyle,
                        ),
                      ],
                    ),
                  );
                },
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Tooltip(
                      waitDuration: const Duration(milliseconds: 300),
                      message: 'CV',
                      child: InkWell(
                        onTap: () async => await launcher(
                            'https://drive.google.com/file/d/1DCzdugrnWfw8quOrsAeP_5Lh2SdXPOWV/view?usp=share_link'),
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset(
                              'assets/button/resume.png',
                              color: const Color.fromARGB(255, 103, 80, 164),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    ElevatedButton.icon(
                      onPressed: () => iconText(context),
                      icon: const Icon(
                        Icons.mark_as_unread_sharp,
                        size: 20.0,
                      ),
                      label: teksLanguage(
                        "HIRE ME",
                        kodeBahasa: Get.parameters['lang'] ?? 'en',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: Font.regular(
                          fontSize: 15.0,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Tooltip(
                      waitDuration: const Duration(milliseconds: 300),
                      message: 'Portfolio',
                      child: InkWell(
                        onTap: () async => await controller.scrollIndex(4),
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset(
                              'assets/button/portofolio.png',
                              color: const Color.fromARGB(255, 103, 80, 164),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Lottie.asset(
            'assets/lottie/swipe.json',
            height: 100,
          ),
        ),
      ],
    ),
  );
}

void iconText(BuildContext context) async {
  Get.defaultDialog(
    title: ('Contact Me').toUpperCase(),
    titleStyle: Font.regular(fontSize: 25),
    content: Column(
      children: [
        Lottie.asset(
          'assets/lottie/contact.json',
          height: responsiveDouble(
            context,
            mobile: 125.0,
            desktop: 150.0,
          ),
        ),
        const Divider(
          color: Colors.black,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: kontak
              .map(
                (e) => Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Tooltip(
                    waitDuration: const Duration(milliseconds: 250),
                    textStyle: Font.regular(color: Colors.white),
                    message: e.name,
                    child: InkWell(
                      onTap: () async => await launcher(e.url),
                      child: Image.asset(
                        e.image,
                        height: e.name == 'Gmail'
                            ? responsiveDouble(
                                context,
                                mobile: 25.0,
                                desktop: 30.0,
                              )
                            : responsiveDouble(
                                context,
                                mobile: 30.0,
                                desktop: 35.0,
                              ),
                      ),
                    ),
                  ),
                ),
              )
              .toList(),
        ),
      ],
    ),
  );
}
