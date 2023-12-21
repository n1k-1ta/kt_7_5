import 'package:get/get.dart';

import '../modules/CarPage/bindings/carPageBinding.dart';
import '../modules/CarPage/views/carPageView.dart';
import '../modules/home/bindings/homeBinding.dart';
import '../modules/home/views/homeView.dart';

part 'appRoutes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.CAR_PAGE,
      page: () => const CarPageView(),
      binding: CarPageBinding(),
    ),
  ];
}
