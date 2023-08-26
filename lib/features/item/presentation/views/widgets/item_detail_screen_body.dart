import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'first_section.dart';
import 'second_section.dart';

class ItemDetailScreenBody extends StatefulWidget {
  const ItemDetailScreenBody({super.key});

  @override
  State<ItemDetailScreenBody> createState() => _ItemDetailScreenBodyState();
}

class _ItemDetailScreenBodyState extends State<ItemDetailScreenBody> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: ListView(
        // crossAxisAlignment: CrossAxisAlignment.start,
        physics: const BouncingScrollPhysics(),
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.48,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0.r),
              image: const DecorationImage(
                image: AssetImage(
                  'assets/images/2.png',
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          const FirstSection(),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          const SecondSection(),
        ],
      ),
    );
  }
}
