import 'package:flutter/material.dart';
import 'package:real_responsive_and_adaptive_design/views/widgets/custom_background_container.dart';
import 'package:real_responsive_and_adaptive_design/views/widgets/income_chart.dart';
import 'package:real_responsive_and_adaptive_design/views/widgets/income_details.dart';
import 'package:real_responsive_and_adaptive_design/views/widgets/income_section_header.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        children: [
          IncomeSectionHeader(),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: IncomeChart(),
                ),
                Expanded(
                  child: IncomeDetails(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
