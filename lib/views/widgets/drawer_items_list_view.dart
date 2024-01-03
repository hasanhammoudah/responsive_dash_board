import 'package:flutter/material.dart';
import 'package:real_responsive_and_adaptive_design/models/drawer_item_model.dart';
import 'package:real_responsive_and_adaptive_design/utils/app_images.dart';
import 'package:real_responsive_and_adaptive_design/views/widgets/drawer_item.dart';

class DraweritemsListView extends StatefulWidget {
  const DraweritemsListView({
    super.key,
  });

  @override
  State<DraweritemsListView> createState() => _DraweritemsListViewState();
}

class _DraweritemsListViewState extends State<DraweritemsListView> {
  int activeIndex = 0;
  final List<DrawerItemModel> items = [
    const DrawerItemModel(title: 'Dashboard', image: Assets.imagesCategory2),
    const DrawerItemModel(
        title: 'My Transaction', image: Assets.imagesConvertCard),
    const DrawerItemModel(title: 'Statistics', image: Assets.imagesGraph),
    const DrawerItemModel(title: 'Wallet Account', image: Assets.imagesWallet2),
    const DrawerItemModel(title: 'My Investments', image: Assets.imagesChart2),
  ];

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              if (activeIndex != index) {
                setState(() {
                  activeIndex = index;
                  //  print(activeIndex);
                });
              }
            },
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: DrawerItem(
                drawerItemModel: items[index],
                isActive: activeIndex == index,
              ),
            ),
          );
        });
  }
}
