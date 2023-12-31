import 'package:fashion_app/core/utils/app_router.dart';
import 'package:fashion_app/core/utils/styles.dart';
import 'package:fashion_app/core/widgets/button.dart';
import 'package:flutter/material.dart';

import 'main_text.dart';
import 'second_text.dart';

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
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const SplashScreenMainText(),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            const SecondTextSplashScreen(),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            CustomButton(
              height: MediaQuery.of(context).size.height * 0.07,
              child: Text(
                'GET STARTED',
                style: TextSytles.textStyle24.copyWith(
                  color: Colors.white,
                ),
              ),
              func: () {
                Navigator.pushNamed(context, AppRouter.kHomeScreen);
              },
            ),
          ],
        ),
      ),
    );
  }
}
