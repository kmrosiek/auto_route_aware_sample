import 'package:auto_route/auto_route.dart';
import 'package:auto_route_aware_sample/router.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: (() => context.pushRoute(const DashboardDetailsRoute())),
          child: const Text('Dashboard Details'),
        ),
      ),
    );
  }
}
