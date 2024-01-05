import 'package:flutter/material.dart';
import 'package:real_responsive_and_adaptive_design/models/user_info_model.dart';
import 'package:real_responsive_and_adaptive_design/utils/app_images.dart';
import 'package:real_responsive_and_adaptive_design/views/widgets/user_info_list_tile.dart';

class LatesTransactionListView extends StatelessWidget {
  const LatesTransactionListView({super.key});

  static const items = [
    UserInfoModel(
        image: Assets.imagesFrame,
        title: 'Madrani Andi',
        subTitle: 'Madraniadi20@gmail'),
    UserInfoModel(
        image: Assets.imagesFrame2,
        title: 'Josua Nunito',
        subTitle: 'Josh Nunito@gmail.com'),
    UserInfoModel(
        image: Assets.imagesFrame,
        title: 'Madrani Andi',
        subTitle: 'Madraniadi20@gmail'),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
          children: items
              .map(
                (e) => IntrinsicWidth(
                  child: UserInfoListTile(userInfoModel: e),
                ),
              )
              .toList()),
    );

    // TODO Note Another way when i have many children
    // return SizedBox(
    //   height: 80,
    //   child: ListView.builder(
    //     itemCount: items.length,
    //     scrollDirection: Axis.horizontal,
    //     itemBuilder: (context, index) {
    //       return IntrinsicWidth(
    //         child: UserInfoListTile(
    //           userInfoModel: items[index],
    //         ),
    //       );
    //     },
    //   ),
    // );
  }
}
