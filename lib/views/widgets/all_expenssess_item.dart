import 'package:flutter/material.dart';
import 'package:real_responsive_and_adaptive_design/models/all_expensess_item_model.dart';
import 'package:real_responsive_and_adaptive_design/views/widgets/inactive_and_active_all_Expensess_item.dart';

class AllExpensessItem extends StatelessWidget {
  const AllExpensessItem(
      {super.key, required this.itemModel, required this.isSelected});

  final AllExpensessItemModel itemModel;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return isSelected
        ? ActiveAllExpensess(itemModel: itemModel)
        : InActiveAllExpensess(itemModel: itemModel);
  }
}
