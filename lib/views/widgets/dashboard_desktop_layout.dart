import 'package:flutter/material.dart';
import 'package:real_responsive_and_adaptive_design/views/widgets/all_expensess.dart';
import 'package:real_responsive_and_adaptive_design/views/widgets/custom_drawer.dart';
import 'package:real_responsive_and_adaptive_design/views/widgets/quick_invoice.dart';

class DashBoardDesktopLayout extends StatelessWidget {
  const DashBoardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: CustomDrawer(),
        ),
        SizedBox(
          width: 32,
        ),
        Expanded(
          flex: 2,
          child: Column(
            children: [
              AllExpenses(),
              SizedBox(
                height: 24,
              ),
              QuickInvoice(),
            ],
          ),
        ),
      ],
    );
  }
}
