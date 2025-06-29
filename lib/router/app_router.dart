import 'package:ecommerce_app/screens/auth/login_screen.dart';
import 'package:ecommerce_app/screens/home/home_screen.dart';
import 'package:go_router/go_router.dart';

final GoRouter appRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => HomeScreen(),
    ),
    GoRoute(
        path: '/login',
        builder: (context, state) {
          return const LoginScreen();
        }),
  ],
);
