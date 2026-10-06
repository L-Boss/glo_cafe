import 'package:get/get.dart';
import 'package:glo_cafe/data/routes/paths.dart';
import 'package:glo_cafe/presentation/screens/splash/splash.dart';

class AppPages {
  static final routes = [
    GetPage(name: AppPaths.SPLASH, page: () => const Splash()),
  ];
}
