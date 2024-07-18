import 'package:flutter/material.dart';


class AppRoutes {
  static const home = '/home';
  static const sign_in = '/signIn';
  static const sign_up = '/signUp';
  static const splash = '/splash';
  static const onboarding = '/onboarding';

}

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // E.g Navigator.of(context).pushNamed(AppRoutes.theScreenYouAreGoingTo);
    switch (settings.name) {
      case AppRoutes.onboarding:
        return MaterialPageRoute<dynamic>(
          builder: (_) =>  const Scaffold(),
          settings: settings,
        );
        case AppRoutes.sign_up:
        return MaterialPageRoute<dynamic>(
          builder: (_) => const Scaffold(),
          settings: settings,
        );

      default:
        return MaterialPageRoute<dynamic>(
          builder: (_) => const Scaffold(),
          settings: settings,
        );
    }
  }
}
