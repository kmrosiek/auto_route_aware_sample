// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    TabNavigationRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const TabNavigationScreen(),
      );
    },
    InfoDetailsRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const InfoDetailsScreen(),
      );
    },
    DashboardDetailsRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const DashboardDetailsScreen(),
      );
    },
    DashboardRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const DashboardScreen(),
      );
    },
    InfoRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const InfoScreen(),
      );
    },
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(
          TabNavigationRoute.name,
          path: '/',
          children: [
            RouteConfig(
              DashboardRoute.name,
              path: 'dashboard-screen',
              parent: TabNavigationRoute.name,
            ),
            RouteConfig(
              InfoRoute.name,
              path: 'info-screen',
              parent: TabNavigationRoute.name,
            ),
          ],
        ),
        RouteConfig(
          InfoDetailsRoute.name,
          path: '/info-details-screen',
        ),
        RouteConfig(
          DashboardDetailsRoute.name,
          path: '/dashboard-details-screen',
        ),
      ];
}

/// generated route for
/// [TabNavigationScreen]
class TabNavigationRoute extends PageRouteInfo<void> {
  const TabNavigationRoute({List<PageRouteInfo>? children})
      : super(
          TabNavigationRoute.name,
          path: '/',
          initialChildren: children,
        );

  static const String name = 'TabNavigationRoute';
}

/// generated route for
/// [InfoDetailsScreen]
class InfoDetailsRoute extends PageRouteInfo<void> {
  const InfoDetailsRoute()
      : super(
          InfoDetailsRoute.name,
          path: '/info-details-screen',
        );

  static const String name = 'InfoDetailsRoute';
}

/// generated route for
/// [DashboardDetailsScreen]
class DashboardDetailsRoute extends PageRouteInfo<void> {
  const DashboardDetailsRoute()
      : super(
          DashboardDetailsRoute.name,
          path: '/dashboard-details-screen',
        );

  static const String name = 'DashboardDetailsRoute';
}

/// generated route for
/// [DashboardScreen]
class DashboardRoute extends PageRouteInfo<void> {
  const DashboardRoute()
      : super(
          DashboardRoute.name,
          path: 'dashboard-screen',
        );

  static const String name = 'DashboardRoute';
}

/// generated route for
/// [InfoScreen]
class InfoRoute extends PageRouteInfo<void> {
  const InfoRoute()
      : super(
          InfoRoute.name,
          path: 'info-screen',
        );

  static const String name = 'InfoRoute';
}
