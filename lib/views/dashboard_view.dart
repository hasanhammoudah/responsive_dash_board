import 'package:flutter/material.dart';
import 'package:real_responsive_and_adaptive_design/utils/size_config.dart';
import 'package:real_responsive_and_adaptive_design/views/widgets/adaptive_layout_widget.dart';
import 'package:real_responsive_and_adaptive_design/views/widgets/custom_drawer.dart';
import 'package:real_responsive_and_adaptive_design/views/widgets/dashboard_desktop_layout.dart';
import 'package:real_responsive_and_adaptive_design/views/widgets/dashboard_mobile_layout.dart';
import 'package:real_responsive_and_adaptive_design/views/widgets/dashboard_tablet_layout.dart';

class DashBoardView extends StatefulWidget {
  const DashBoardView({super.key});

  @override
  State<DashBoardView> createState() => _DashBoardViewState();
}

class _DashBoardViewState extends State<DashBoardView> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: MediaQuery.sizeOf(context).width < SizeConfig.tablet
          ? AppBar(
              elevation: 0,
              backgroundColor: const Color(0xFFFAFAFA),
              leading: IconButton(
                onPressed: () {
                  scaffoldKey.currentState!.openDrawer();
                },
                icon: const Icon(Icons.menu),
              ),
            )
          : null,
      backgroundColor: const Color(0xFFF7F9FA),
      drawer: MediaQuery.sizeOf(context).width < SizeConfig.desktop
          ? const CustomDrawer()
          : null,
      body: AdaptiveLayout(
          mobileLayout: (context) => const DashBoardMobileLayout(),
          tabletLayout: (context) => const DashBoardTabletLayout(),
          desktopLayout: (context) => const DashBoardDesktopLayout()),
    );
  }
}
