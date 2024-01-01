import 'package:flutter/material.dart';
import 'package:real_responsive_and_adaptive_design/views/dashboard_view.dart';

void main() {
  runApp(const ResponsiveDashBoard());
}

class ResponsiveDashBoard extends StatelessWidget {
  const ResponsiveDashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DashBoardView(),
    );
  }
}