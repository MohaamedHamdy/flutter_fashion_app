import 'package:fashion_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

import 'widgets/home_screen_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'New Drops',
          style: TextSytles.textStyle24
              .copyWith(color: Colors.black, fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
            ),
          ),
        ],
      ),
      body: const HomeScreenBody(),
    );
  }
}
