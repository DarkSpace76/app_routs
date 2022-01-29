import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';
import 'package:zwork/init_app.dart';
import 'package:zwork/localization/localization_service.dart';
import 'package:zwork/routes/app_pages.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
      overlays: [SystemUiOverlay.bottom, SystemUiOverlay.top]);

  await initAppActivity();

  runApp(
    GetMaterialApp.router(
      title: "ZWork",
      /* initialBinding: BindingsBuilder(
        () {
          Get.put(AuthService());
        },
      ), */
      getPages: AppPages.routes,
      translations: LocalizationService(),
      supportedLocales: LocalizationService.supportedLocales,
      locale: LocalizationService.getInitialLocale(),
      fallbackLocale: LocalizationService.fallbackLocale,
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
    ),
  );
}
