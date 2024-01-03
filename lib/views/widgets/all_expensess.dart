import 'package:flutter/material.dart';
import 'package:real_responsive_and_adaptive_design/views/widgets/all_expansess_header.dart';
import 'package:real_responsive_and_adaptive_design/views/widgets/all_expensess_item_list_view.dart';
import 'package:real_responsive_and_adaptive_design/views/widgets/custom_background_container.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        children: [
          AllExpensessHeader(),
          SizedBox(
            height: 16,
          ),
          AllExpenseesITemListView(),
        ],
      ),
    );
  }
}

