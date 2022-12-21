import 'package:auto_route/auto_route.dart';
import 'package:auto_route_aware_sample/route_wrapper.dart';
import 'package:auto_route_aware_sample/router.dart';
import 'package:flutter/material.dart';

class TabNavigationScreen extends StatelessWidget {
  const TabNavigationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return RouteWrapper(
        child: AutoTabsRouter.pageView(
            routes: const [
          DashboardRoute(),
          InfoRoute(),
        ],
            builder: (context, child, animation) {
              return Scaffold(
                backgroundColor: Colors.transparent,
                body: child,
                bottomNavigationBar: BottomNavigationBar(
                  type: BottomNavigationBarType.fixed,
                  currentIndex: context.tabsRouter.activeIndex,
                  onTap: context.tabsRouter.setActiveIndex,
                  items: const [
                    BottomNavigationBarItem(
                        icon: Icon(Icons.home), label: 'Home'),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.person), label: 'Info'),
                  ],
                ),
              );
            }));
  }
}
