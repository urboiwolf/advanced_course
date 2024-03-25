import 'package:advanced_course/core/di/depencenecy_injection.dart';
import 'package:advanced_course/core/routing/app_routes.dart';
import 'package:advanced_course/doc_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  setUpGetIt();
  await ScreenUtil.ensureScreenSize();
  runApp(DocApp(
    appRouter: AppRouter(),
  ));
}
