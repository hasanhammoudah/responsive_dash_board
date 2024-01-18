import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:real_responsive_and_adaptive_design/models/item_details_model.dart';
import 'package:real_responsive_and_adaptive_design/views/widgets/item_details.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key});

  static const items = [
    ItemDetailsModel(
        color: Color(0xFF208BC7), title: 'Design service', value: '40%'),
    ItemDetailsModel(
        color: Color(0xFF4DB7F2), title: 'Design product', value: '25%'),
    ItemDetailsModel(
        color: Color(0xFF064060), title: 'Product royalti', value: '20%'),
    ItemDetailsModel(color: Color(0xFFE2DECD), title: 'Other', value: '22%'),
  ];

  @override
  Widget build(BuildContext context) {
    //log(MediaQuery.sizeOf(context).width.toString());
    return Column(
      children: items
          .map(
            (e) => ItemDetails(itemDetailsModel: e),
          )
          .toList(),
    );
    // return ListView.builder(
    //   shrinkWrap: true,
    //   itemCount: items.length,
    //   itemBuilder: (context, index) {
    //     return ItemDetails(
    //       itemDetailsModel: items[index],
    //     );
    //   },
    // );
  }
}
