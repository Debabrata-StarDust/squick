import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:squick/controllers/login_controller.dart';
import 'package:squick/core/colors.dart';
import 'package:squick/core/texts.dart';
import 'package:squick/widgets/textformfeild.dart';

class Login extends GetView<LoginController> {
  Login({super.key});
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 90.h),
              child: Align(
                child: Image.asset(
                  "images/image1.png",
                  width: 180.w,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 110.h),
              child: const Align(
                child: Text(
                  CommonText.login,
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: kPrimaryColor),
                ),
              ),
            ),
            Container(
                margin: EdgeInsets.only(left: 22.w, top: 10.h),
                alignment: Alignment.centerLeft,
                child: const Text(
                  CommonText.email,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                )),
            Padding(
              padding: EdgeInsets.only(
                left: 20.w,
                right: 20.w,
              ),
              child: TextForm(
                obScureText: false,
                nameController: emailController,
                hintTextName: "abc@gmail.com",
                // labelName: "Email",
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 22.w, top: 30.h),
              alignment: Alignment.centerLeft,
              child: const Text(
                CommonText.password,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20.w, right: 20.w),
              child: TextForm(
                obScureText: true,
                nameController: passwordController,
                hintTextName: "***********",
                // labelName: "Password",
              ),
            ),
            Row(
              children: [
                Obx(() {
                  // controller.checkbox();
                  return
                      // Checkbox(
                      //   overlayColor: Colors.red,
                      //   value: controller.isChecked.value,
                      //  onChanged:controller.checkbox() )?:
                      Checkbox(
                          checkColor: kPrimaryColor,
                          value: controller.isChecked.value,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          onChanged: controller.checkbox());
                }),
              ],
            )
          ],
        ),
      ),
    );
  }
}
