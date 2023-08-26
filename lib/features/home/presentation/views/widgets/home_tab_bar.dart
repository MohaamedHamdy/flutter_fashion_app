import 'package:fashion_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'bordered_tab_bar_text.dart';

class HomeTabBar extends StatelessWidget {
  const HomeTabBar({
    super.key,
    required TabController tabController,
    required this.items,
  }) : _tabController = tabController;

  final TabController _tabController;
  final List items;

  @override
  Widget build(BuildContext context) {
    return TabBar(
      physics: const BouncingScrollPhysics(),
      controller: _tabController,
      isScrollable: true,
      labelColor: Colors.white,
      unselectedLabelColor: Colors.black,
      labelPadding: EdgeInsets.only(right: 10.w),
      indicatorSize: TabBarIndicatorSize.label,
      labelStyle: TextSytles.textStyle14.copyWith(
        fontWeight: FontWeight.bold,
      ),
      indicator: BoxDecoration(
        color: Colors.black,
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(52.r),
      ),
      tabs: List.generate(
        items.length,
        (index) => BorderedTabBarText(
          items: items,
          index: index,
        ),
      ),
    );
  }
}
