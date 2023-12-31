// import 'package:fashion_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GridItem extends StatelessWidget {
  final int index;

  const GridItem({
    Key? key,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: index % 2 == 1 ? EdgeInsets.only(top: 26.h) : EdgeInsets.zero,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 260,
            width: 180,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.r),
              image: const DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  'assets/images/2.png',
                ),
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.008,
          ),
          const Text(
            'High Protection Swift Sunglasses ',
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontWeight: FontWeight.w900),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.005,
          ),
          const Text(
            '\$ 49.99',
            style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
