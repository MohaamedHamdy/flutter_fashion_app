import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DownWardArrow extends StatelessWidget {
  const DownWardArrow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RotatedBox(
      quarterTurns: 1,
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: Colors.black,
            width: 3.0.w,
          ),
        ),
        child: const ArrowButton(),
      ),
    );
  }
}

class ArrowButton extends StatelessWidget {
  const ArrowButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.arrow_outward_outlined,
          size: 35,
          color: Colors.black,
          weight: 1,
          fill: 1,
        ),
      ),
    );
  }
}
