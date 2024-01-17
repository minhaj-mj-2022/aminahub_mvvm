import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:aminahub/repository/splash_repo.dart';
import 'package:aminahub/screen/splash_scrn.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SplashViewModel(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Aminahub',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const SplashScreen(),
      ),
    );
  }
}
