// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final double? height;
  final double? width;
  final double? radius;
  final Widget child;
  final Color? color;
  // ignore: prefer_typing_uninitialized_variables
  final func;

  const CustomButton({
    Key? key,
    this.height = 50,
    this.width = double.infinity,
    this.radius = 14.0,
    required this.child,
    this.color = Colors.black,
    required this.func,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radius!),
          ),
        ),
        onPressed: func,
        child: child,
      ),
    );
  }
}
