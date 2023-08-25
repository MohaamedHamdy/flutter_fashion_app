import 'package:flutter/material.dart';

class SecondTextSplashScreen extends StatelessWidget {
  const SecondTextSplashScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: 0.8,
      child: Text(
        'With focus on quality, attention to detail, and ethical practices',
        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
              color: Colors.white,
            ),
      ),
    );
  }
}
