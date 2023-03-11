import 'package:portofolio/app/data/dll/font.dart';
import 'package:portofolio/app/data/dll/language.dart';
import 'package:portofolio/app/data/dll/responsive.dart';
import 'package:portofolio/app/data/dll/services.dart';
import 'package:portofolio/app/data/screen/inti_apps.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pie_chart/pie_chart.dart';
import 'package:portofolio/app/modules/home/controllers/home_controller.dart';

class MySkillMenu extends GetView<HomeController> {
  const MySkillMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        pieChart(
          context,
          hardOrsoft: 'hard',
          secondaryColor: const Color.fromARGB(255, 0, 79, 144),
          primaryColor: const Color.fromARGB(255, 105, 188, 255),
        ),
        pieChart(
          context,
          hardOrsoft: 'soft',
          primaryColor: const Color.fromARGB(255, 0, 79, 144),
          secondaryColor: const Color.fromARGB(255, 105, 188, 255),
        ),
      ],
    );
  }
}

Expanded pieChart(
  BuildContext context, {
  required String hardOrsoft,
  required Color primaryColor,
  required Color secondaryColor,
}) {
  double height = getHeight(context) / 2;
  return Expanded(
    child: Container(
      height: height <= 250 ? 250 : height,
      decoration: BoxDecoration(color: primaryColor),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            teksLanguage(
              (isi['${hardOrsoft}_skill']!.title).toUpperCase(),
              kodeBahasa: Get.parameters['lang'] ?? 'en',
              style: Font.regular(
                fontSize: responsiveDouble(
                  context,
                  mobile: 20.0,
                  desktop: 30.0,
                ),
                fontWeight: FontWeight.bold,
                color: secondaryColor,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 170,
              child: ListView.builder(
                itemCount:
                    (isi['${hardOrsoft}_skill']!.subtitle as List).length,
                physics: const BouncingScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  Map<String, double> skill =
                      isi['${hardOrsoft}_skill']!.subtitle![index];
                  return Padding(
                    padding: const EdgeInsets.all(10),
                    child: SizedBox(
                      width: 110,
                      child: Column(
                        children: [
                          SizedBox(
                            height: 40,
                            child: Center(
                              child: teksLanguage(
                                skill.keys.first,
                                kodeBahasa: hardOrsoft == 'soft'
                                    ? Get.parameters['lang'] ?? 'en'
                                    : 'en',
                                style: Font.regular(
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.w500,
                                  color: secondaryColor,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          PieChart(
                            dataMap: skill,
                            baseChartColor: secondaryColor,
                            animationDuration: const Duration(seconds: 1),
                            colorList: const [
                              Colors.red,
                            ],
                            chartRadius: 75,
                            initialAngleInDegree: 270,
                            chartType: ChartType.ring,
                            ringStrokeWidth: 20,
                            centerText: '${skill.values.first.toString()}%',
                            centerTextStyle: Font.regular(
                              color: secondaryColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                            legendOptions: const LegendOptions(
                              legendPosition: LegendPosition.right,
                              showLegends: false,
                              legendShape: BoxShape.circle,
                              legendTextStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            totalValue: 100.0,
                            chartValuesOptions: const ChartValuesOptions(
                              showChartValueBackground: false,
                              showChartValues: false,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
