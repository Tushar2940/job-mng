import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:job_mng/screens/dashboard/ui/dashboard.dart';
import 'package:job_mng/screens/login/ui/login.dart';
import 'package:job_mng/screens/splash/ui/splash.dart';


final router = GoRouter(
  initialLocation: '/',
  debugLogDiagnostics: true,
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashScreen(),
    ),
    GoRoute(
      path: Login.path,
      builder: (context, state) => const Login(),
    ),
    GoRoute(
      path: Dashboard.path,
      builder: (context, state) => const Dashboard(),
    ),
  ],
);