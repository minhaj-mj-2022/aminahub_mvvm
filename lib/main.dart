import 'package:aminahub/firebase_options.dart';
import 'package:aminahub/utils/routes.dart';
import 'package:aminahub/utils/size_config.dart';
import 'package:aminahub/view_model/splash_view_mdl.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:aminahub/view/splash_scrn.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return ChangeNotifierProvider(
      create: (context) => SplashViewModel(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Aminahub',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
          useMaterial3: true,
        ),
        home: const SplashScreen(),
        initialRoute: AppRoutes.signInScreen,
        routes: AppRoutes.routes,
      ),
    );
  }
}
