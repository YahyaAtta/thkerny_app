import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:thkerny_app/controller/bindings/app_bindings.dart';
import 'package:thkerny_app/routes.dart';
import 'package:thkerny_app/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'ذكرني',
      defaultTransition: Transition.rightToLeftWithFade,
      initialBinding: AppBindings(),
      locale: const Locale('ar'),
      debugShowCheckedModeBanner: false,
      theme: lightAppTheme,
      darkTheme: darkAppTheme,
      themeMode: ThemeMode.system,
      initialRoute: '/',
      getPages: getPages,
    );
  }
}
