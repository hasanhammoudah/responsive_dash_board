import 'package:flutter/material.dart';
import 'package:real_responsive_and_adaptive_design/utils/app_styles.dart';
import 'package:real_responsive_and_adaptive_design/views/widgets/lates_transaction_list_view.dart';

class LatesTransaction extends StatelessWidget {
  const LatesTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Latest Transaction',
          style: AppStyles.styleMedium16,
        ),
        SizedBox(
          height: 16,
        ),
        LatesTransactionListView(),
      ],
    );
  }
}
