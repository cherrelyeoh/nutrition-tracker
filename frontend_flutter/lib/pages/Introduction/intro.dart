import 'dart:ui'; // Import for BackdropFilter
import 'package:flutter/material.dart';
import 'package:fluttertest/pages/Login/login.dart'; // Import your login page

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  _IntroPageState createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage>
    with SingleTickerProviderStateMixin {
  double _opacity = 0.0;
  double _scale = 0.5; // Start with a smaller size

  @override
  void initState() {
    super.initState();

    // Start fading in background & scaling the icon after 2 seconds
    Future.delayed(Duration(seconds: 2), () {
      setState(() {
        _opacity = 1.0;
        _scale = 1.0; // Scale up the icon
      });
    });

    // Navigate to login page after 3 seconds
    Future.delayed(Duration(seconds: 6), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LoginPage()), // Go to Login
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Background Image with Fade-in Effect
          AnimatedOpacity(
            duration: Duration(seconds: 2),
            opacity: _opacity,
            child: Stack(
              fit: StackFit.expand,
              children: [
                Image.asset(
                  'assets/img/IntroPage.png',
                  fit: BoxFit.cover,
                ),

                // Background Blur Effect
                Positioned.fill(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 1.0, sigmaY: 1.0),
                    child: Container(
                      color: Colors.black.withOpacity(0.1),
                    ),
                  ),
                ),
              ],
            ),
          ),

          // Centered Icon Image with Scaling Animation
          Center(
            child: AnimatedScale(
              scale: _scale,
              duration: Duration(seconds: 2),
              curve: Curves.easeInOut,
              child: Image.asset(
                'assets/img/BB_1.png',
                width: 500, // Make it bigger
                height: 500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
