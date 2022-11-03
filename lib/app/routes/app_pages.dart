import 'package:get/get.dart';

import '../modules/home/pages/home_page.dart';
import '../modules/list/pages/list_page.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/list/bindings/list_binding.dart';
part './app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomePage(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.LIST,
      page: () => const ListPage(),
      binding: ListBinding(),
    ),
  ];
}
