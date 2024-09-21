import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:user_register/core/routes/app_pages.dart';
import 'package:user_register/core/routes/app_routes.dart';
import 'package:user_register/core/utils/helper_widget.dart';
import 'package:user_register/core/utils/size_config.dart';
import 'package:user_register/core/values/app_theme.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: 'https://fyddxocfhcaewlwzpkuf.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImZ5ZGR4b2NmaGNhZXdsd3pwa3VmIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjY2NTA2MTUsImV4cCI6MjA0MjIyNjYxNX0.azYTE6bP5cshJFKA1jOQmVwFvp0KTKmtqA5UmXt75qM',
  );

  runApp(const MyApp());
}

final supabase = Supabase.instance.client;

// await supabase.from('profile').insert(
//     {'fish': {"salomlar": "hellos"},
//       'address': 'Namanganlar',
//       'phone_number': '+998 99tetgert 999 99 99'
//     },
//   );

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    SizeConfig().init(context);
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

    return MaterialApp(
      title: 'Flutter Demo',
      theme: appThemeData,
      onGenerateRoute: RouteGenerate().generate,
      navigatorKey: navigatorKey,
      builder: (context, child) {
        return ScrollConfiguration(behavior: MyBehavior(), child: child!);
      },
      initialRoute: AppRoutes.splashScreen,
    );
  }
}

class MyBehavior extends ScrollBehavior {
  @override
  ScrollPhysics getScrollPhysics(BuildContext context) =>
      const ClampingScrollPhysics();
}
