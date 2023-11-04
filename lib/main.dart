import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:internship_project/src/controller/checkbox_controller.dart';
import 'package:internship_project/src/controller/item_provider.dart';
import 'package:internship_project/src/module/log_in&sign_uo/view/log_in.dart';
import 'package:internship_project/src/module/spalsh_screen/view/splash_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(414, 896),
      minTextAdapt: true,
      splitScreenMode: true,
      // Use builder only if you need to use library outside ScreenUtilInit context
      builder: (_, child) {
        return MultiProvider(
          providers: [
            ChangeNotifierProvider(create: (_) => ItemProvider()),
          ],
          child: const MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'First Method',
            home: SplashScreen(),
          ),
        );
      },
    );
  }
}
