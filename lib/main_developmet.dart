import 'package:advanced_course/core/di/depencenecy_injection.dart';
import 'package:advanced_course/core/helpers/constants.dart';
import 'package:advanced_course/core/helpers/extentions.dart';
import 'package:advanced_course/core/helpers/shared_pref.dart';
import 'package:advanced_course/core/routing/app_routes.dart';
import 'package:advanced_course/doc_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await checkIfLoggedIn();
  setUpGetIt();
  await ScreenUtil.ensureScreenSize();
  runApp(DocApp(
    appRouter: AppRouter(),
  ));
}

checkIfLoggedIn() async {
  String? token =
      await SharedPrefHelper.getSecuredString(SharedPrefKeys.userToken);
  if (!token.isNullOrEmpty()) {
    isLoggedInUser = true;
  } else {
    isLoggedInUser = false;
  }
}
