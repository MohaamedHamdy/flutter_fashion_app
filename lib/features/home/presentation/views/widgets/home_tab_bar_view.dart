import 'package:fashion_app/core/utils/app_router.dart';
import 'package:flutter/material.dart';

import 'grid_item.dart';

class HomeTabBarView extends StatelessWidget {
  const HomeTabBarView({
    super.key,
    required TabController tabController,
  }) : _tabController = tabController;

  final TabController _tabController;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TabBarView(
        physics: const BouncingScrollPhysics(),
        controller: _tabController,
        children: [
          GridView.builder(
            physics: const BouncingScrollPhysics(),
            itemCount: 10,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.53,
              crossAxisSpacing: 10,
              mainAxisSpacing: 0,
            ),
            itemBuilder: (context, index) => GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, AppRouter.kItemDetailScreen);
              },
              child: GridItem(
                index: index,
              ),
            ),
          ),
          GridView.builder(
            itemCount: 10,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.53,
              crossAxisSpacing: 10,
              mainAxisSpacing: 0,
            ),
            itemBuilder: (context, index) => GridItem(
              index: index,
            ),
          ),
          GridView.builder(
            itemCount: 10,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.53,
              crossAxisSpacing: 10,
              mainAxisSpacing: 0,
            ),
            itemBuilder: (context, index) => GridItem(
              index: index,
            ),
          ),
          GridView.builder(
            itemCount: 10,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.53,
              crossAxisSpacing: 10,
              mainAxisSpacing: 0,
            ),
            itemBuilder: (context, index) => GridItem(
              index: index,
            ),
          ),
        ],
      ),
    );
  }
}
