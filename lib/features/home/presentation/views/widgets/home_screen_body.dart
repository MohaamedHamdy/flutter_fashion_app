import 'package:fashion_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

import 'down_ward_arrow.dart';

class HomeScreenBody extends StatefulWidget {
  const HomeScreenBody({super.key});

  @override
  State<HomeScreenBody> createState() => _HomeScreenBodyState();
}

class _HomeScreenBodyState extends State<HomeScreenBody>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                'NEW IN ',
                style: TextSytles.textStyle50
                    .copyWith(fontWeight: FontWeight.bold),
              ),
              const DownWardArrow(),
            ],
          ),
        ],
      ),
    );
  }
}
