import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:glo_cafe/data/routes/pages.dart';
import 'package:glo_cafe/data/routes/paths.dart';

class GloCafe extends StatefulWidget {
  const GloCafe({super.key});

  @override
  State<GloCafe> createState() => _GloCafeState();
}

class _GloCafeState extends State<GloCafe> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, _) => GetMaterialApp(
        initialRoute: AppPaths.SPLASH,
        getPages: AppPages.routes,
        //initialBinding: InitialBinding(),
        debugShowCheckedModeBanner: false,
        defaultTransition: Transition.rightToLeft,
        locale: DevicePreview.locale(context),
        builder: DevicePreview.appBuilder,
      ),
    );
  }
}
