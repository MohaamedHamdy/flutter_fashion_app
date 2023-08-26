import 'package:fashion_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

import 'widgets/home_screen_body.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isSearch = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              child: Text('Side Menu'),
            ),
            ListTile(
              title: const Text('Home'),
              onTap: () {
                // Do something
              },
            ),
            ListTile(
              title: const Text('Settings'),
              onTap: () {
                // Do something
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: !isSearch
            ? Text(
                'New Drops',
                style: TextSytles.textStyle24
                    .copyWith(color: Colors.black, fontWeight: FontWeight.w500),
              )
            : TextField(
                onSubmitted: (value) {
                  setState(() {
                    isSearch = !isSearch;
                  });
                },
                decoration: InputDecoration(hintText: 'Search'),
              ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                isSearch = !isSearch;
              });
            },
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
