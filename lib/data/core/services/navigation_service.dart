import 'package:flutter/material.dart';


class NavigationService {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
  final GlobalKey<ScaffoldMessengerState> snackBarKey =
  GlobalKey<ScaffoldMessengerState>();


  Future<dynamic> navigateToWidget(Widget route) {
    final context = navigatorKey.currentContext;
    if (context != null) {
      return Navigator.of(context).push(MaterialPageRoute(builder: (_)=> route));
    }
    throw Exception("Navigator context is null");
  }

  Future<dynamic> navigateToReplaceWidget(Widget route) {
    final context = navigatorKey.currentContext;
    if (context != null) {
      return Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_)=> route));
    }
    throw Exception("Navigator context is null");
  }

  // Future<dynamic> navigateToAndRemoveUntilWidget(Widget route) {
  //   final context = navigatorKey.currentContext;
  //   if (context != null) {
  //     return Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (_)=> route));
  //   }
  //   throw Exception("Navigator context is null");
  // }


  void goBack() {
    final context = navigatorKey.currentContext;
    if (context != null) {
      Navigator.of(context).pop();
    }
  }
}
