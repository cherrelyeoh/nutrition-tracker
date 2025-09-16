import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:fluttertest/models/user_model.dart';
import 'package:fluttertest/pages/Introduction/intro.dart';
import 'package:fluttertest/routes/app_routes.dart';
import 'package:fluttertest/theme/app_theme.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Load the environment variables based on the build environment
  const bool isProduction = bool.fromEnvironment('dart.vm.product');
  await dotenv.load(
    fileName: isProduction ? '.env.production' : '.env.development',
  );

  // Run the app
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      // Providing UserModel to the widget tree
      create: (_) => UserModel(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: AppTheme.lightTheme,
        themeMode: ThemeMode.system, // Respect system theme
        onGenerateRoute: AppRoutes.generateRoute,
        home: const IntroPage(), // Main screen of the app
      ),
    );
  }
}
