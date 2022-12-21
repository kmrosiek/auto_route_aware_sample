import 'package:auto_route/auto_route.dart';
import 'package:auto_route_aware_sample/screens/dashboard_details_screen.dart';
import 'package:auto_route_aware_sample/screens/dashboard_screen.dart';
import 'package:auto_route_aware_sample/screens/info_details_screen.dart';
import 'package:auto_route_aware_sample/screens/info_screen.dart';
import 'package:auto_route_aware_sample/screens/tab_navigation_screen.dart';
import 'package:flutter/material.dart';

part 'router.gr.dart';

@MaterialAutoRouter(replaceInRouteName: 'Screen,Route', routes: <AutoRoute>[
  AutoRoute(initial: true, page: TabNavigationScreen, children: [
    AutoRoute(page: DashboardScreen),
    AutoRoute(page: InfoScreen),
  ]),
  AutoRoute(page: InfoDetailsScreen),
  AutoRoute(page: DashboardDetailsScreen),
])
class AppRouter extends _$AppRouter {}
