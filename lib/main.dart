import 'package:e_wallet_app/dashboard_screen.dart';
// import 'package:e_wallet_app/presentation/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: DashboardScreen(
          currentTab: 0,
        ),
      ),
    );
  }
}
