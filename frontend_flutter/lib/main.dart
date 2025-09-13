import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:fluttertest/blocs/UserOnboarding/onboarding_bloc.dart';
import 'package:fluttertest/pages/Introduction/intro.dart';
import 'package:fluttertest/routes/app_routes.dart';
import 'package:fluttertest/theme/app_theme.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  const bool isProduction = bool.fromEnvironment('dart.vm.product');
  await dotenv.load(
      fileName: isProduction ? '.env.production' : '.env.development');

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
