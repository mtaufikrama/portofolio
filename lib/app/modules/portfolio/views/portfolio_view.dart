import 'package:bordered_text/bordered_text.dart';
import 'package:dismissible_page/dismissible_page.dart';
import 'package:portofolio/app/data/dll/assets.dart';
import 'package:portofolio/app/data/dll/font.dart';
import 'package:portofolio/app/data/dll/language.dart';
import 'package:portofolio/app/data/dll/responsive.dart';
import 'package:portofolio/app/data/object_class/porto_class.dart';
import 'package:portofolio/app/data/screen/inti_apps.dart';
import 'package:portofolio/app/modules/portfolio/controllers/portfolio_controller.dart';
import 'package:portofolio/app/modules/portfolio/views/imagepage_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:get/get.dart';

class PortfolioView extends GetView<PortfolioController> {
  const PortfolioView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String id = Get.parameters['id'] ?? '0';
    String lang = Get.parameters['lang'] ?? 'en';
    Portfolio porto = isi['portofolio']!.subtitle[int.parse(id)];
    return SafeArea(
      child: Scaffold(
        backgroundColor: porto.primaryColor,
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Center(
            child: Container(
              color: Colors.white,
              width: MediaQuery.of(context).size.width * 0.8,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.only(
                      top: 20,
                      bottom: 5,
                      right: 20,
                      left: 20,
                    ),
                    decoration: BoxDecoration(
                      color: porto.secondaryColor,
                      borderRadius: const BorderRadius.vertical(
                        bottom: Radius.circular(20),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: 40,
                          backgroundImage: AssetImage(porto.logo),
                        ),
                        BorderedText(
                          strokeWidth: 1.5,
                          strokeColor: Colors.black,
                          child: Text(
                            (porto.nama).toUpperCase(),
                            style: Font.regular(
                              letterSpacing: 2,
                              color: porto.primaryColor,
                              fontSize: 35,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                      top: 30.0,
                    ),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          porto.primaryColor,
                          porto.secondaryColor,
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    padding: const EdgeInsets.symmetric(
                      vertical: 5.0,
                      horizontal: 15.0,
                    ),
                    child: teksLanguage(
                      (porto.kategori).toUpperCase(),
                      kodeBahasa: lang,
                      style: Font.regular(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(30),
                    child: teksLanguage(
                      (porto.deskripsi).toUpperCase(),
                      kodeBahasa: lang,
                      style: Font.regular(
                        color: porto.secondaryColor,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(
                    height: 100,
                    child: AnimationLimiter(
                      child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: porto.team.length,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          Team team = porto.team[index];
                          return AnimationConfiguration.staggeredList(
                            position: index,
                            child: SlideAnimation(
                              horizontalOffset: 80.0,
                              duration: const Duration(seconds: 1),
                              child: FadeInAnimation(
                                duration: const Duration(seconds: 1),
                                child: AspectRatio(
                                  aspectRatio: 1,
                                  child: Hero(
                                    tag: team.image,
                                    child: GestureDetector(
                                      onTap: () => context.pushTransparentRoute(
                                        ImagepageView(
                                          team: team,
                                          tagName: team.image,
                                          color: porto.primaryColor,
                                        ),
                                        reverseTransitionDuration:
                                            const Duration(milliseconds: 500),
                                        transitionDuration:
                                            const Duration(milliseconds: 500),
                                      ),
                                      child: Container(
                                        margin: const EdgeInsets.all(15),
                                        decoration: BoxDecoration(
                                          boxShadow: const [
                                            BoxShadow(
                                              blurRadius: 5,
                                              spreadRadius: 1,
                                              offset: Offset(3, 2),
                                              color: Colors.black45,
                                            ),
                                          ],
                                          color: porto.primaryColor,
                                          borderRadius:
                                              BorderRadius.circular(50),
                                          image: DecorationImage(
                                            image: AssetImage(team.image),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(30),
                    child: teksLanguage(
                      (porto.tujuan).toUpperCase(),
                      kodeBahasa: lang,
                      style: Font.regular(
                        color: porto.secondaryColor,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  porto.frameAndroid == 0 && porto.frameWebsite == 0
                      ? Padding(
                          padding: const EdgeInsets.only(bottom: 30),
                          child: Image.asset(
                            porto.frame,
                            width: MediaQuery.of(context).size.width * 0.3,
                          ),
                        )
                      : responsiveWidget(
                          context,
                          mobile: Column(
                            children: [
                              porto.frameAndroid == 0
                                  ? Container()
                                  : Frames(
                                      secondaryColor: porto.secondaryColor,
                                      borderRadius:
                                          const BorderRadius.horizontal(
                                        right: Radius.circular(200),
                                      ),
                                      device: 'ANDROID',
                                      imageWidget: ListView.builder(
                                        scrollDirection: Axis.horizontal,
                                        itemCount: porto.frameAndroid,
                                        physics: const BouncingScrollPhysics(),
                                        itemBuilder:
                                            (BuildContext context, int index) {
                                          final String image = Porto.android(
                                            porto.nama.toLowerCase(),
                                            index1: index + 1,
                                          );
                                          return Padding(
                                            padding: const EdgeInsets.only(
                                              left: 10,
                                            ),
                                            child: GestureDetector(
                                              onTap: () =>
                                                  context.pushTransparentRoute(
                                                ImagepageView(
                                                  tagName: image,
                                                  color: porto.primaryColor,
                                                  image: image,
                                                ),
                                                reverseTransitionDuration:
                                                    const Duration(
                                                        milliseconds: 500),
                                                transitionDuration:
                                                    const Duration(
                                                        milliseconds: 500),
                                              ),
                                              child: Hero(
                                                tag: image,
                                                child: Image.asset(
                                                  image,
                                                  fit: BoxFit.contain,
                                                ),
                                              ),
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                              const SizedBox(
                                height: 10,
                              ),
                              porto.frameWebsite == 0
                                  ? Container()
                                  : Frames(
                                      secondaryColor: porto.secondaryColor,
                                      device: 'WEBSITE',
                                      borderRadius:
                                          const BorderRadius.horizontal(
                                        left: Radius.circular(200),
                                      ),
                                      imageWidget: ListView.builder(
                                        reverse: true,
                                        scrollDirection: Axis.horizontal,
                                        itemCount: porto.frameWebsite,
                                        physics: const BouncingScrollPhysics(),
                                        itemBuilder:
                                            (BuildContext context, int index) {
                                          final String image = Porto.website(
                                            porto.nama.toLowerCase(),
                                            index1: index + 1,
                                          );
                                          return Padding(
                                            padding: const EdgeInsets.only(
                                                right: 10),
                                            child: GestureDetector(
                                              onTap: () =>
                                                  context.pushTransparentRoute(
                                                ImagepageView(
                                                  tagName: image,
                                                  color: porto.primaryColor,
                                                  image: image,
                                                ),
                                                reverseTransitionDuration:
                                                    const Duration(
                                                  milliseconds: 500,
                                                ),
                                                transitionDuration:
                                                    const Duration(
                                                  milliseconds: 500,
                                                ),
                                              ),
                                              child: Hero(
                                                tag: image,
                                                child: Image.asset(
                                                  image,
                                                  fit: BoxFit.contain,
                                                ),
                                              ),
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                            ],
                          ),
                          desktop: Row(
                            children: [
                              porto.frameAndroid == 0
                                  ? Container()
                                  : Expanded(
                                      child: Frames(
                                        secondaryColor: porto.secondaryColor,
                                        borderRadius:
                                            const BorderRadius.horizontal(
                                          right: Radius.circular(200),
                                        ),
                                        device: 'Android',
                                        imageWidget: ListView.builder(
                                          scrollDirection: Axis.horizontal,
                                          itemCount: porto.frameAndroid,
                                          physics:
                                              const BouncingScrollPhysics(),
                                          itemBuilder: (BuildContext context,
                                              int index) {
                                            final String image = Porto.android(
                                              porto.nama.toLowerCase(),
                                              index1: index + 1,
                                            );
                                            return Padding(
                                              padding: const EdgeInsets.only(
                                                left: 10,
                                              ),
                                              child: GestureDetector(
                                                onTap: () => context
                                                    .pushTransparentRoute(
                                                  ImagepageView(
                                                    tagName: image,
                                                    color: porto.primaryColor,
                                                    image: image,
                                                  ),
                                                  reverseTransitionDuration:
                                                      const Duration(
                                                          milliseconds: 500),
                                                  transitionDuration:
                                                      const Duration(
                                                          milliseconds: 500),
                                                ),
                                                child: Hero(
                                                  tag: image,
                                                  child: Image.asset(
                                                    image,
                                                    fit: BoxFit.contain,
                                                  ),
                                                ),
                                              ),
                                            );
                                          },
                                        ),
                                      ),
                                    ),
                              porto.frameWebsite == 0
                                  ? Container()
                                  : Expanded(
                                      child: Frames(
                                        secondaryColor: porto.secondaryColor,
                                        device: 'Website',
                                        borderRadius:
                                            const BorderRadius.horizontal(
                                          left: Radius.circular(200),
                                        ),
                                        imageWidget: ListView.builder(
                                          reverse: true,
                                          scrollDirection: Axis.horizontal,
                                          itemCount: porto.frameWebsite,
                                          physics:
                                              const BouncingScrollPhysics(),
                                          itemBuilder: (BuildContext context,
                                              int index) {
                                            final String image = Porto.website(
                                              porto.nama.toLowerCase(),
                                              index1: index + 1,
                                            );
                                            return Padding(
                                              padding: const EdgeInsets.only(
                                                right: 10,
                                              ),
                                              child: GestureDetector(
                                                onTap: () => context
                                                    .pushTransparentRoute(
                                                  ImagepageView(
                                                    tagName: image,
                                                    color: porto.primaryColor,
                                                    image: image,
                                                  ),
                                                  reverseTransitionDuration:
                                                      const Duration(
                                                          milliseconds: 500),
                                                  transitionDuration:
                                                      const Duration(
                                                          milliseconds: 500),
                                                ),
                                                child: Hero(
                                                  tag: image,
                                                  child: Image.asset(
                                                    image,
                                                    fit: BoxFit.contain,
                                                  ),
                                                ),
                                              ),
                                            );
                                          },
                                        ),
                                      ),
                                    ),
                            ],
                          ),
                        ),
                  porto.fitur.isEmpty
                      ? Container()
                      : Container(
                          margin: const EdgeInsets.all(10),
                          padding: const EdgeInsets.all(15),
                          color: porto.secondaryColor,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Container(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 10),
                                color: Colors.white,
                                child: teksLanguage(
                                  ('features').toUpperCase(),
                                  kodeBahasa: lang,
                                  style: Font.regular(
                                    color: porto.secondaryColor,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: Column(
                                  children: List.generate(
                                    porto.fitur.length,
                                    (index) => Row(
                                      children: [
                                        SizedBox(
                                          width: 25,
                                          child: Text(
                                            'o',
                                            style: Font.regular(
                                              fontSize: 20.0,
                                              color: Colors.white,
                                            ),
                                            textAlign: TextAlign.start,
                                          ),
                                        ),
                                        Expanded(
                                          child: teksLanguage(
                                            porto.fitur[index],
                                            kodeBahasa: lang,
                                            style: Font.regular(
                                              fontSize: 20.0,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                  porto.teknologi.isEmpty
                      ? Container()
                      : Container(
                          margin: const EdgeInsets.all(10),
                          padding: const EdgeInsets.all(15),
                          color: porto.secondaryColor,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Container(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 10),
                                color: Colors.white,
                                child: teksLanguage(
                                  ('technology').toUpperCase(),
                                  kodeBahasa: lang,
                                  style: Font.regular(
                                    color: porto.secondaryColor,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: Column(
                                  children: List.generate(
                                    porto.teknologi.length,
                                    (index) => Row(
                                      children: [
                                        SizedBox(
                                          width: 25,
                                          child: Text(
                                            'o',
                                            style: Font.regular(
                                              fontSize: 20.0,
                                              color: Colors.white,
                                            ),
                                            textAlign: TextAlign.start,
                                          ),
                                        ),
                                        Expanded(
                                          child: teksLanguage(
                                            porto.teknologi[index],
                                            kodeBahasa: lang,
                                            style: Font.regular(
                                              fontSize: 20.0,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class Frames extends StatelessWidget {
  const Frames({
    super.key,
    required this.device,
    required this.secondaryColor,
    required this.borderRadius,
    required this.imageWidget,
  });

  final String device;
  final Color secondaryColor;
  final BorderRadiusGeometry borderRadius;
  final Widget imageWidget;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: ClipRRect(
        borderRadius: borderRadius,
        child: Container(
          color: secondaryColor,
          child: Column(
            children: [
              SizedBox(
                height: 75.0,
                child: Center(
                  child: Text(
                    device,
                    style: Font.regular(
                      fontSize: responsiveDouble(
                        context,
                        mobile: 20.0,
                        desktop: 30.0,
                      ),
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 15.0),
                child: SizedBox(
                  height: 150.0,
                  child: imageWidget,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
