import 'package:fashion_app/features/home/presentation/views/home_screen.dart';
import 'package:fashion_app/features/item/presentation/views/item_details_screen.dart';
import 'package:fashion_app/features/splash/presentation/views/splash_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  static const kHomeScreen = '/home';
  static const kItemDetailScreen = '/itemDetail';

  static Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (_) => const SplashScreen(),
        );
      case kHomeScreen:
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(),
        );
      case kItemDetailScreen:
        return MaterialPageRoute(
          builder: (_) => const ItemDetailScreen(),
        );
    }
    return null;
  }
}
