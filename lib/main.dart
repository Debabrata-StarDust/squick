import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:squick/core/colors.dart';
import 'package:squick/views/login.dart';

import 'core/bindings.dart';
import 'views/splash.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const Squick());
}

class Squick extends StatelessWidget {
  const Squick({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      builder: (context, child) {
        return GetMaterialApp(
          title: "Squick",
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSwatch().copyWith(
              primary: kPrimaryColor,
            ),
            // primarySwatch: kPrimaryColor,
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
          initialRoute: "/",
          getPages: [
            GetPage(
                name: "/",
                page: () => const Splash(),
                binding: SplashBinding()),
            GetPage(
                name: "/login", page: () => Login(), binding: LoginBinding()),
            // GetPage(name: "/signUp", page: () => const SignUp(), binding: SignUpBinding()),
          ],
        );
      },
    );
  }
}
