import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:liveinhotels_task/core/di.dart';
import 'package:liveinhotels_task/core/route/routes.dart';
import 'package:liveinhotels_task/core/theme/app_text_theme.dart';
import 'package:liveinhotels_task/core/theme/custom_color_scheme.dart';
import 'package:liveinhotels_task/core/value_notifiers.dart';
import 'package:liveinhotels_task/features/home/presentation/screens/app_landing_screen.dart';

void main() async {
  await injectDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      child: ValueListenableBuilder(
          valueListenable: themeMode,
          builder: (context, value, child) {
            return MaterialApp(
              title: 'LiveinHotels',
              theme: FlexThemeData.light(
                useMaterial3: true,
                colors: customFlexTheme.light,
                textTheme: AppTextThemeData.textThemeData,
              ),
              darkTheme: FlexThemeData.dark(
                useMaterial3: true,
                colors: customFlexTheme.dark,
                textTheme: AppTextThemeData.textThemeData,
              ),
              themeMode: themeMode.value,
              onGenerateRoute: RouterClass.generateRoute,
              debugShowCheckedModeBanner: false,
              initialRoute: RouteNames.appLandingScreen,
              home: const AppLandingScreen(),
            );
          }),
    );
  }
}
