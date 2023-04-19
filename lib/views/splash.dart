import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../controllers/splash_controller.dart';

class Splash extends GetView<SplashController> {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
              bottom: 500.h,
              top: 0,
              right: 0,
              left: 190.w,
              child: Image.asset(
                "images/Ellipse2.png", width: 290.w,
                // width: 200,
              )),
          Positioned(
              bottom: 0,
              top: 350.h,
              child: Image.asset(
                "images/Ellipse1.png", width: 290.w,
                // width: 200,
              )),
          Center(
              child: Image.asset(
            "images/image1.png",
            width: 260.w,
          ))
        ],
      ),
    );
  }
}
