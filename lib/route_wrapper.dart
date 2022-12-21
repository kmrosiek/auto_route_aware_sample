import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class RouteWrapper extends StatefulWidget {
  const RouteWrapper({super.key, required this.child});
  final Widget child;

  @override
  State<RouteWrapper> createState() => _RouteWrapperState();
}

class _RouteWrapperState extends State<RouteWrapper>
    with AutoRouteAware, TickerProviderStateMixin {
  AutoRouteObserver? _observer;
  @override
  Widget build(BuildContext context) {
    return widget.child;
  }

  @override
  void didChangeDependencies() {
    _observer =
        RouterScope.of(context).firstObserverOfType<AutoRouteObserver>();
    if (_observer != null) {
      _observer!.subscribe(this, context.routeData);
    }
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    print('wrapper disposed: $hashCode');
    _observer?.unsubscribe(this);
    super.dispose();
  }

  @override
  void didInitTabRoute(TabPageRoute? previousRoute) {
    print('tabinit');
  }

  @override
  void didChangeTabRoute(TabPageRoute previousRoute) {
    print('tabchanged');
  }

  @override
  void didPop() {
    print('pop: $hashCode');
    super.didPop();
  }

  @override
  void didPopNext() {
    print('poped next: $hashCode');
    super.didPopNext();
  }

  @override
  void didPush() {
    print('pushed!: $hashCode');
    super.didPush();
  }

  @override
  void didPushNext() {
    print('pushed next: $hashCode');
    super.didPushNext();
  }
}
