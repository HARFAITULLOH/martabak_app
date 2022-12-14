import 'package:get/get.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/pages/home_page.dart';
import '../modules/list/bindings/list_binding.dart';
import '../modules/list/pages/list_page.dart';
import '../modules/menu/bindings/menu_binding.dart';
import '../modules/menu/pages/menu_page.dart';

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
    GetPage(
      name: _Paths.MENU,
      page: () => const MenuPage(),
      binding: MenuBinding(),
    ),
  ];
}
