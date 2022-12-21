import 'package:auto_route/auto_route.dart';
import 'package:auto_route_aware_sample/router.dart';
import 'package:flutter/material.dart';

class InfoScreen extends StatelessWidget {
  const InfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: ElevatedButton(
              onPressed: (() => context.pushRoute(const InfoDetailsRoute())),
              child: const Text('Info Details'))),
    );
  }
}
