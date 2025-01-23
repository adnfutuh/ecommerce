import 'package:ecommerce/features/personalization/screens/setting/setting_screen.dart';
import 'package:ecommerce/features/shop/screens/screens.dart';
import 'package:ecommerce/routes/routes.dart';
import 'package:get/get.dart';

class AppRoutes {
  static final pages = [
    GetPage(name: RRoutes.home, page: () => const HomeScreen()),
    GetPage(name: RRoutes.store, page: () => const StoreScreen()),
    GetPage(name: RRoutes.wishlist, page: () => const WishlistScreen()),
    GetPage(name: RRoutes.setting, page: () => const SettingScreen()),
  ];
}
