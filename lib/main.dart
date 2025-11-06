// filepath: e:\stackfood_sample_task\lib\main.dart
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'core/app_initializer.dart';
import 'core/bindings/initial_binding.dart';
import 'core/localization/app_translations.dart';
import 'core/routes/app_pages.dart';
import 'core/routes/app_routes.dart';
import 'core/utils/app_responsive.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Light, non-blocking setup
  await AppInitializer.prepareMinimal();
  if (!kIsWeb) {
    await SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }
  runApp(const MyApp());

  WidgetsBinding.instance.addPostFrameCallback((_) async {
    await AppInitializer.initPostRun();
  });
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    if (!kIsWeb) {
      SystemChrome.setEnabledSystemUIMode(
        SystemUiMode.manual,
        overlays: [SystemUiOverlay.top],
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 870),
      minTextAdapt: true,
      splitScreenMode: true,
      useInheritedMediaQuery: true,
      builder: (context, child) {
        return LayoutBuilder(
          builder: (context, constraints) {
            final mediaQuery = MediaQuery.of(context);
            final targetWidth =
                AppResponsive.resolveContentWidth(constraints.maxWidth);

            final constrainedApp = MediaQuery(
              data: mediaQuery.copyWith(
                size: Size(targetWidth, mediaQuery.size.height),
                textScaler: const TextScaler.linear(1.0),
              ),
              child: child!,
            );

            if (constraints.maxWidth <= targetWidth) {
              return constrainedApp;
            }

            return Align(
              alignment: Alignment.topCenter,
              child: SizedBox(
                width: targetWidth,
                child: constrainedApp,
              ),
            );
          },
        );
      },
      child: GetMaterialApp(
        navigatorKey: navigatorKey,
        builder: FToastBuilder(),
        debugShowCheckedModeBanner: false,
        translations: AppTranslations(),
        locale: AppTranslations.resolveSavedLocale(),
        fallbackLocale: AppTranslations.en,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        initialRoute: Routes.home,
        initialBinding: InitialBinding(),
        getPages: AppPages.pages,
      ),
    );
  }
}
