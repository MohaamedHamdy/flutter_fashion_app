// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:fashion_app/core/utils/styles.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'down_ward_arrow.dart';
import 'home_tab_bar.dart';
import 'home_tab_bar_view.dart';

class HomeScreenBody extends StatefulWidget {
  const HomeScreenBody({super.key});

  @override
  State<HomeScreenBody> createState() => _HomeScreenBodyState();
}

class _HomeScreenBodyState extends State<HomeScreenBody>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  List items = [
    'All',
    'Shoes',
    'Shirts',
    'Bags',
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: items.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
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
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          HomeTabBar(tabController: _tabController, items: items),
          const SizedBox(
            height: 30,
          ),
          HomeTabBarView(tabController: _tabController),
        ],
      ),
    );
  }
}
