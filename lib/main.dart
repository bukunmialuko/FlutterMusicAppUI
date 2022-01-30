import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';
import 'package:music_app_ui/util/navigation/navigation_service.dart';
import 'package:music_app_ui/util/navigation/routes.dart';
import 'package:music_app_ui/util/navigation/screen_router.dart';

import 'di/service_locator.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  await ServiceLocator().setUp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: () => MaterialApp(
        title: 'Music App Ui',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(),
        themeMode: ThemeMode.light,
        navigatorKey: GetIt.I.get<NavigationService>().navigatorKey,
        initialRoute: Routes.initial,
        onGenerateRoute: ScreenRouter.generateRoute,
      ),
    );
  }
}
