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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
          ),
          Text(
            'TheSociety',
            style: TextSytles.textStyle24.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ),
          ),
          Column(
            children: [
              Text('Uncover your true fashion sence'),
            ],
          )
        ],
      ),
    );
  }
}
