import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertest/blocs/UserOnboarding/onboarding_bloc.dart';
import 'package:fluttertest/pages/Introduction/intro.dart';
import 'package:fluttertest/routes/app_routes.dart';
import 'package:fluttertest/theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        // Providing OnboardingBloc to the app
        BlocProvider(create: (_) => OnboardingBloc()),
        // You can add other providers here as well, for example:
        // BlocProvider(create: (_) => AnotherBloc()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: AppTheme.lightTheme,
        themeMode: ThemeMode.system, // 🔥 respect phone's setting
        onGenerateRoute: AppRoutes.generateRoute,
        home: const IntroPage(), // Main screen of the app
      ),
    );
  }
}
