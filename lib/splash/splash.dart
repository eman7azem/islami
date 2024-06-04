import 'package:flutter/material.dart';
import 'package:islami/home_screen.dart';
import 'package:provider/provider.dart';

import '../providers/my_provider.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key});

  static const String routeName = 'Splash';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, HomeScreen.route);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    var brightness = MediaQuery.of(context).platformBrightness;

    return Scaffold(
      body: brightness == Brightness.light
          ? _buildLightSplashScreen()
          : _buildDarkSplashScreen(),
    );
  }

  Widget _buildLightSplashScreen() {
    return Container(
      color: Colors.white,
      child: Center(
        child: Image.asset(
          'assets/images/logo2.png',
          width: 262,
          height: 262,
        ),
      ),
    );
  }

  Widget _buildDarkSplashScreen() {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/bg_splash_dark.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Center(
        child: Image.asset(
          'assets/images/logo_dark.png',
          width: 262,
          height: 262,
        ),
      ),
    );
  }
}
