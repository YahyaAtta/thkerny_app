import 'package:get/get.dart';
import 'package:thkerny_app/view/azkar_details.dart';
import 'package:thkerny_app/view/azkar_screen.dart';
import 'package:thkerny_app/view/home_screen.dart';

List<GetPage<dynamic>>? getPages = [
  GetPage(name: AppRoute.homeScreen, page: () => HomeScreen()),
  GetPage(name: AppRoute.azkarScreen, page: () => AzkarScreen()),
  GetPage(name: AppRoute.azkarDetails, page: () => AzkarDetails()),
];

class AppRoute {
  static String homeScreen = "/";
  static String azkarScreen = "/azkar";
  static String azkarDetails = "/details";
}
