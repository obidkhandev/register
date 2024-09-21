import 'package:flutter/cupertino.dart';
import 'package:user_register/core/routes/app_routes.dart';
import 'package:user_register/feature/splash/splash_screen.dart';


class RouteGenerate {
  Route? generate(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      /// PROJECT ///

      case AppRoutes.splashScreen:
        return simpleRoute(const SplashScreen());


    }
    return null;
  }

  simpleRoute(Widget route) => CupertinoPageRoute(builder: (context) => route);
}
