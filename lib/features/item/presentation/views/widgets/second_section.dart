// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:fashion_app/core/utils/styles.dart';
import 'package:fashion_app/core/widgets/button.dart';

class SecondSection extends StatefulWidget {
  const SecondSection({super.key});

  @override
  State<SecondSection> createState() => _SecondSectionState();
}

class _SecondSectionState extends State<SecondSection> {
  List colors = [
    Colors.purple,
    Colors.red,
    Colors.black,
    Colors.green,
    Colors.blue,
  ];

  int selectedColor = -1;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '\$49.99',
              style: TextSytles.textStyle30.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              children: List.generate(
                colors.length,
                (index) => InkWell(
                  onTap: () {
                    setState(() {
                      selectedColor = index;
                    });
                  },
                  child: colorsItem(
                    selectedColor: selectedColor,
                    colors: colors,
                    index: index,
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.028,
        ),
        CustomButton(
          height: 60,
          child: Text(
            'Add To Cart',
            style: TextSytles.textStyle24.copyWith(color: Colors.white),
          ),
          func: () {},
        ),
      ],
    );
  }
}

class colorsItem extends StatelessWidget {
  final int index;

  const colorsItem({
    Key? key,
    required this.index,
    required this.selectedColor,
    required this.colors,
  }) : super(key: key);

  final int selectedColor;
  final List colors;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 6),
      decoration: selectedColor == index
          ? BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: colors[index],
                width: 2.0,
              ),
            )
          : const BoxDecoration(),
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: CircleAvatar(
          maxRadius: 8,
          backgroundColor: colors[index],
        ),
      ),
    );
  }
}
