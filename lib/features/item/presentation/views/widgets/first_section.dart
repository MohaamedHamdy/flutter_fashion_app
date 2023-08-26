import 'package:flutter/material.dart';
import 'first_section_main_text.dart';

class FirstSection extends StatelessWidget {
  const FirstSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const FirstSectionMainText(),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.02,
        ),
        const Text(
          'Our swift sunglasses are designed to keep you looking great all day long.',
        ),
      ],
    );
  }
}
