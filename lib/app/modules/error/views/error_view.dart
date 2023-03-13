import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../controllers/error_controller.dart';

class ErrorView extends GetView<ErrorController> {
  const ErrorView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          height: MediaQuery.of(context).size.height * 0.5,
          width: MediaQuery.of(context).size.width * 0.5,
          child: Lottie.asset(
            'assets/lottie/error.json',
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
