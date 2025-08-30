import 'package:flutter/material.dart';

import 'screens/splash_screen.dart';
import 'screens/login_screen.dart';
import 'screens/home_screen.dart';
import 'screens/recharge_screen.dart';
import 'screens/history_screen.dart';
import 'screens/profile_screen.dart';

class Routes {
  static const splash = '/';
  static const login = '/login';
  static const home = '/home';
  static const recharge = '/recharge';
  static const history = '/history';
  static const profile = '/profile';
}

final Map<String, WidgetBuilder> appRoutes = {
  Routes.splash: (_) => const SplashScreen(),
  Routes.login: (_) => const LoginScreen(),
  Routes.home: (_) => const HomeScreen(),
  Routes.recharge: (_) => const RechargeScreen(),
  Routes.history: (_) => const HistoryScreen(),
  Routes.profile: (_) => const ProfileScreen(),
};
