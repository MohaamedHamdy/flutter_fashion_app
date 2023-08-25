import 'package:fashion_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

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
              fontStyle: FontStyle.italic,
            ),
          ),
        ],
      ),
    );
  }
}
