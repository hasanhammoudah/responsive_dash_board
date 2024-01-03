import 'package:flutter/material.dart';
import 'package:real_responsive_and_adaptive_design/utils/app_styles.dart';
import 'package:real_responsive_and_adaptive_design/views/widgets/range_options.dart';

class AllExpensessHeader extends StatelessWidget {
  const AllExpensessHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'All Expenses',
          style: AppStyles.styleSemiBold20,
        ),
        RangeOptions(),
      ],
    );
  }
}
