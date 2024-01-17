import 'package:flutter/material.dart';
import 'package:real_responsive_and_adaptive_design/views/widgets/adaptive_layout_widget.dart';
import 'package:real_responsive_and_adaptive_design/views/widgets/dashboard_desktop_layout.dart';
import 'package:real_responsive_and_adaptive_design/views/widgets/my_cards_section.dart';

class DashBoardView extends StatelessWidget {
  const DashBoardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F9FA),
      body: AdaptiveLayout(
          mobileLayout: (context) => const SizedBox(),
          tabletLayout: (context) => const SizedBox(),
          desktopLayout: (context) => const DashBoardDesktopLayout()),
    );
  }
}
