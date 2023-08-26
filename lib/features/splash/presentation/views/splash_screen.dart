import 'package:fashion_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

import 'widgets/splash_screen_body.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'TheSociety',
          style: TextSytles.textStyle24.copyWith(
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromRGBO(175, 144, 122, 1),
        elevation: 0.0,
      ),
      body: const SplashScreenBody(),
    );
  }
}
