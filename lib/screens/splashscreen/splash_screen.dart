import 'package:flutter/material.dart';
import 'package:music_app_ui/screens/root/root_widget.dart';

import 'package:music_app_ui/res/assets.dart';
import 'package:music_app_ui/screens/root/root_widget.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late bool isFirstTime;

  @override
  void initState() {
    // super.initState();
    _animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 4));

    _animationController.forward();
    _animationController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => const RootWidget(),
        ));
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(Assets.SPLASH_BACKGROUND_IMG),
              fit: BoxFit.cover),
        ),
      ),
    );
  }
}
