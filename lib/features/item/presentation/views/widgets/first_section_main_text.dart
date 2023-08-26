import 'package:fashion_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FirstSectionMainText extends StatelessWidget {
  const FirstSectionMainText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: 'High Protection\n',
        style: TextSytles.textStyle50.copyWith(
          color: Colors.black,
          fontSize: 38.sp,
          fontWeight: FontWeight.w500,
        ),
        children: [
          TextSpan(
            text: 'Swift Sunglasses',
            style: TextSytles.textStyle50.copyWith(
              decoration: TextDecoration.underline,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w500,
              fontSize: 38.sp,
            ),
          ),
        ],
      ),
    );
  }
}
