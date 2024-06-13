import 'package:advanced_course/core/helpers/constants.dart';
import 'package:advanced_course/core/routing/app_routes.dart';
import 'package:advanced_course/core/routing/routes.dart';
import 'package:advanced_course/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DocApp extends StatelessWidget {
  final AppRouter appRouter;
  const DocApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: AppColor.mainBlue,
          scaffoldBackgroundColor: Colors.white,
        ),
        initialRoute: isLoggedInUser ? Routes.homeScreen : Routes.loginScreen,
        onGenerateRoute: appRouter.generateRoute,
      //codee
      ),
    );
  }
}
