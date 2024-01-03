import 'package:flutter/material.dart';
import 'package:real_responsive_and_adaptive_design/models/all_expensess_item_model.dart';
import 'package:real_responsive_and_adaptive_design/utils/app_images.dart';
import 'package:real_responsive_and_adaptive_design/views/widgets/all_expenssess_item.dart';

class AllExpenseesITemListView extends StatefulWidget {
  const AllExpenseesITemListView({super.key});

  @override
  State<AllExpenseesITemListView> createState() =>
      _AllExpenseesITemListViewState();
}

class _AllExpenseesITemListViewState extends State<AllExpenseesITemListView> {
  final items = [
    const AllExpensessItemModel(
      image: Assets.imagesMoneys,
      title: 'Balance',
      date: 'April 2022',
      price: r'$20,129',
    ),
    const AllExpensessItemModel(
      image: Assets.imagesCardReceive,
      title: 'Income',
      date: 'April 2022',
      price: r'$20,129',
    ),
    const AllExpensessItemModel(
      image: Assets.imagesCardSend,
      title: 'Expenses',
      date: 'April 2022',
      price: r'$20,129',
    ),
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
        children: items.asMap().entries.map((e) {
      int index = e.key;
      var item = e.value;
      if (index == 1) {
        return Expanded(
          child: GestureDetector(
            onTap: () {
              updateIndex(index);
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: AllExpensessItem(
                itemModel: item,
                isSelected: selectedIndex == index,
              ),
            ),
          ),
        );
      } else {
        return Expanded(
          child: GestureDetector(
            onTap: () {
              updateIndex(index);
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: AllExpensessItem(
                itemModel: item,
                isSelected: selectedIndex == index,
              ),
            ),
          ),
        );
      }
    }).toList());
  }

  void updateIndex(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
}
