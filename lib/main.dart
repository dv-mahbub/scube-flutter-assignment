import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scube_flutter_assignment/core/service/router/router.dart';
import 'package:scube_flutter_assignment/core/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      builder: (context, child) {
        return MediaQuery.withClampedTextScaling(
          maxScaleFactor: 1.5,
          child: MaterialApp.router(
            debugShowCheckedModeBanner: false,
            theme: context.themeData,
            themeMode: ThemeMode.system,
            routerConfig: router,
          ),
        );
      },
    );
  }
}
