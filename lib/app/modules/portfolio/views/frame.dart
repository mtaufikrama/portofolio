import 'package:flutter/material.dart';
import 'package:portofolio/app/data/dll/font.dart';
import 'package:portofolio/app/data/dll/responsive.dart';

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
