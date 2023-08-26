import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BorderedTabBarText extends StatelessWidget {
  final int index;

  const BorderedTabBarText({
    Key? key,
    required this.index,
    required this.items,
  }) : super(key: key);

  final List items;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(52.r),
        border: Border.all(
          color: Colors.black,
          width: 3,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 6.h),
        child: Text(
          items[index],
        ),
      ),
    );
  }
}
