import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'approute/app_go_route.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final context = SecurityContext.defaultContext;
  context.allowLegacyUnsafeRenegotiation = true;
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then((value) =>   runApp(const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      title: 'job-Manager',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
    );
  }
}
