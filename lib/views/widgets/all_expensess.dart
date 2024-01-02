import 'package:flutter/material.dart';
import 'package:real_responsive_and_adaptive_design/views/widgets/all_expansess_header.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Column(
        children: [
          AllExpensessHeader(),
        ],
      ),
    );
  }
}


