import 'package:advanced_course/core/di/depencenecy_injection.dart';
import 'package:advanced_course/core/routing/routes.dart';
import 'package:advanced_course/features/home/logic/home_cubit.dart';
import 'package:advanced_course/features/home/ui/home_screen.dart';
import 'package:advanced_course/features/login/ui/login_screen.dart';
import 'package:advanced_course/features/login/data/logic/cubit/login_cubit.dart';
import 'package:advanced_course/features/onboarding/onboarding_screen.dart';
import 'package:advanced_course/features/sign_up/logic/cubit/sgin_up_cubit.dart';
import 'package:advanced_course/features/sign_up/ui/sign_up_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    //this arguments to be passed in any screen like this ( arguments as ClassName )
    final arguments = settings.arguments;

    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
          builder: (_) => const OnBoarding(),
        );
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<LoginCubit>(),
            child: const LoginScreen(),
          ),
        );
      case Routes.signUpScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<SignupCubit>(),
            child: const SignupScreen(),
          ),
        );
      case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => HomeCubit(getIt())..getSpecialization(),
            child: const HomeScreen(),
          ),
        );

      default:
        return null;
    }
  }
}
