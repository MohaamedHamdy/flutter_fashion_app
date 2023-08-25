import 'package:fashion_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class SplashScreenBody extends StatelessWidget {
  const SplashScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.maxFinite,
      width: double.maxFinite,
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          // alignment: Alignment.centerLeft,
          image: AssetImage(
            'assets/images/splash.png',
          ),
        ),
      ),
      child: const Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SplashScreenMainText(),
          ],
        ),
      ),
    );
  }
}

class SplashScreenMainText extends StatelessWidget {
  const SplashScreenMainText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: 'Uncover your true ',
        style: TextSytles.textStyle50,
        children: [
          TextSpan(
            text: 'fashion sence',
            style: TextSytles.textStyle50.copyWith(
              decoration: TextDecoration.underline,
            ),
          ),
        ],
      ),
    );
  }
}
