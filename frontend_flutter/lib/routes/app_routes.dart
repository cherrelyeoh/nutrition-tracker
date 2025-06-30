import 'package:flutter/material.dart';
import 'package:fluttertest/pages/MealCalendar/mealCalendarMain.dart';

class AppRoutes {
  // static const String home = '/home';
  // static const String profile = '/profile';
  // static const String settings = '/settings';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/calendarMain':
        return MaterialPageRoute(builder: (_) => const MealCalendarMain());
      // case profile:
      //   return MaterialPageRoute(builder: (_) => const ProfileScreen());
      // case settings:
      //   return MaterialPageRoute(builder: (_) => const SettingsScreen());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('No route defined for ${settings.name}')),
          ),
        );
    }
  }
}
