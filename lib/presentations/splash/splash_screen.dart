import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lottie/lottie.dart';

import '../home/home_layout.dart';
import '../resourses/assets_manager.dart';
import '../resourses/color_manager.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Timer? _timer;

  _startDelay() {
    _timer = Timer(
      const Duration(seconds: 6),
      _goNext,
    );
  }

  _goNext() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => const HomeLayout()));
  }

  @override
  void initState() {
    _startDelay();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.primary,
      appBar: AppBar(
        backgroundColor: ColorManager.primary,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: ColorManager.primary,
          statusBarIconBrightness: Brightness.light,
          statusBarBrightness: Brightness.light,
          systemNavigationBarColor: ColorManager.primary,
          systemNavigationBarIconBrightness: Brightness.light,
          systemNavigationBarDividerColor: ColorManager.primary,
        ),
      ),
      body: Center(
        child: Lottie.asset(
          JsonAssets.splashLogo,
        ),
      ),
    );
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }
}
