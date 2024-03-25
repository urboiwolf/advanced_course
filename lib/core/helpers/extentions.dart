import 'package:flutter/material.dart';

extension Navigation on BuildContext {
  Future<dynamic> pushNamed(String routName, {Object? arguments}) {
    return Navigator.of(this).pushNamed(routName, arguments: arguments);
  }

  Future<dynamic> pushReplacementNamed(String routName, {Object? arguments}) {
    return Navigator.of(this)
        .pushReplacementNamed(routName, arguments: arguments);
  }

  // Future<dynamic> pushAndRemoveUntil(String routeName,
  //     {Object? arguments, required RoutePredicate predicate}) {
  //   return Navigator.of(this).pushAndRemoveUntil(
  //       routeName , predicate, arguments: arguments,
  //       );
  // }

  void pop() => Navigator.of(this).pop();
}
